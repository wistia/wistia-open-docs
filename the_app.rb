#
# This app handles search requests and also has a hook to allow for self-updating
#

require 'tire'
require 'pp'
require 'sinatra'
require 'haml'

# fix so foreman gets logging
$stdout.sync = true

# this is also for dev, so that our sinatra app can serve up the files
# the jekyll generated for us
set :public_folder, Proc.new { File.join( root , '_site') }


get "/doc/search/:q" do
  q = params[:q]

  q.gsub!("_", " ")

  s = Tire.search 'posts' do
    query do
      string q
    end
  end

  results_list = s.results.map do |result|
    {
      :title => result.title,
      :url => result.url,
      :description => result.description
    }
  end
  
  result = { :results => results_list }.to_json
  if params[:callback]
    "#{params[:callback]}(#{result});"
  else
    result
  end
end

# github will hit this URL after a commit so we can auto-update
# the doc. omg this is cool.
post '/doc/update' do
  spawn('rake', 'nuclear_update', chdir: File.dirname(__FILE__))
  'We can rebuild him. We have the technology. We can make him better than he was. Better...stronger...faster.'
end


# this is for development, so we can load 
get "*" do |path|
  full_path = File.join(settings.public_folder, path)
  docless_path = File.join(settings.public_folder, path.gsub(%r|^/doc|, ''))

  if File.directory?(full_path)
    send_file File.join(full_path, 'index.html')
  elsif File.exists?(full_path)
    send_file full_path
  elsif File.exists?(docless_path)
    send_file docless_path
  else
    raise 'File not found'
  end
end

