#
# This app handles search requests and also has a hook to allow for self-updating
#

require 'tire'
require 'pp'
require 'sinatra'
require 'haml'

set :public_folder, Proc.new { File.join( root , '_site') }

# fix so foreman gets logging
$stdout.sync = true

get "/search/:q" do
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
post '/update' do
  spawn('rake', 'nuclear_update', chdir: File.dirname(__FILE__))
  'We can rebuild him. We have the technology. We can make him better than he was. Better...stronger...faster.'
end
