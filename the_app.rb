#
# This app handles search requests and also has a hook to allow for self-updating
#

require 'tire'
require 'pp'
require 'sinatra'
require 'haml'
require 'rack/rewrite'
require_relative './_config'

# fix so foreman gets logging
$stdout.sync = true

use Rack::Rewrite do
  rewrite %r{#{BASEPATH}(.*)}, '$1'
  r301 %r{/start/?}, "#{BASEPATH}"
end

class SuperStatic
  def initialize(app)
    @app = app
    @root = File.join(File.dirname(__FILE__), '_site')
    @file_server = Rack::File.new(@root)
  end

  def call(env)
    path = env['PATH_INFO']
    file_path = File.join(@root, path)
    file_path_with_index = File.join(@root, path, 'index.html')
    if FileTest.file?(file_path)
      send_file(file_path)
    elsif FileTest.file?(file_path_with_index)
      send_file(file_path_with_index)
    else
      @app.call(env)
    end
  end

  def send_file(path)
    [ 200,
      {
        'Content-Length' => ::File.size(path).to_s,
        'Content-Type'   => Rack::Mime.mime_type(::File.extname(path))
      },
      [::File.read(path)]
    ]
  end
end

use SuperStatic

get "/search/:q" do
  q = params[:q]

  q.gsub!("_", " ")

  s = Tire.search 'posts' do
    query do
      string q
    end
  end

  Tire.configure do
    logger 'elasticsearch.log'
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

# TODO: Properly re-initialize the server.
# github will hit this URL after a commit so we can auto-update
# the doc. omg this is cool.
post '/update' do
  spawn('rake', 'nuclear_update', chdir: File.dirname(__FILE__))
  'We can rebuild him. We have the technology. We can make him better than he was. Better...stronger...faster.'
end

# 404 page
not_found do
  send_file(File.join(File.dirname(__FILE__), '_site', '404.html'), {:status => 404})
end

