#
# This app handles search requests and also has a hook to allow for self-updating
#

require 'pp'
require 'rack/rewrite'
require 'elasticsearch'
require_relative './_config'

# fix so foreman gets logging
$stdout.sync = true

class TheApp < Sinatra::Base

  use Rack::Rewrite do
    r301 %r{/start/?}, "#{$config.basepath}"
    r301 %r{/randor-basics/?}, "#{$config.basepath}/wistia-basics-getting-started"
    r301 %r{/randor-(\w+)/?}, "#{$config.basepath}/wistia-basics-$1"
    r301 %r{/randor?}, "#{$config.basepath}/wistia-basics"
    r301 %r{/embed-screen?}, "#{$config.basepath}/customizing-your-video"
    r301 %r{/transcripts}, "#{$config.basepath}/captions"
    r301 %r{/customize-api}, "#{$config.basepath}/data-api#customizations"
    r301 %r{/replaceable-video}, "#{$config.basepath}/replace-video"
    r301 %r{/viewer-rec}, "#{$config.basepath}/viewer-requirements"
    rewrite %r{#{$config.basepath}(.*)}, '$1'
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

  get '/search/:q' do
    text = params[:q]

    text.gsub!('_', ' ')

    query = {
      query: {
        fuzzy_like_this: {
          fields: ['body', 'title', 'url', 'description', 'category'],
          like_text: text
        }
      }
    }


    elasticsearch = Elasticsearch::Client.new(
      log: true,
      host: '127.0.0.1',
      port: 9200
    )
    result = elasticsearch.search(index: 'docs', body: query)

    hits = (result['hits'] && result['hits']['hits']) or []

    results = hits.map do |hit|
      {
        title: hit['_source']['title'],
        description: hit['_source']['description'],
        url: hit['_source']['url'],
      }
    end

    results = { results: results }

    if params[:callback]
      "#{params[:callback]}(#{results.to_json})"
    else
      results.to_json
    end
  end

  # TODO: Properly re-initialize the server.
  # github will hit this URL after a commit so we can auto-update
  # the doc. omg this is cool.
  post '/update' do
    return 403 unless params[:update_key] == $config.update_key
    spawn({
        'PATH' => '/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.5.4:/opt/elasticsearch-0.19.9/bin',
        'LANG' => 'en_US.UTF-8',
        'LC_ALL' => 'en_US.UTF-8'
      }, 'rake nuclear_update', chdir: File.dirname(__FILE__))
    'We can rebuild him. We have the technology. We can make him better than he was. Better...stronger...faster.'
  end

  # 404 page
  not_found do
    send_error_file(File.join(File.dirname(__FILE__), '_site', '404.html'))
  end

  # DevHQ page
  get "/developers" do
    send_file(File.join(File.dirname(__FILE__), '_site', 'developers.html'))
  end

  # Agency!
  get "/agency" do
    send_file(File.join(File.dirname(__FILE__), '_site', 'agency.html'))
  end

  get "/wistia-basics" do
    send_file(File.join(File.dirname(__FILE__), '_site', 'wistia-basics.html'))
  end

  def send_error_file(path)
    [404,
      {
        'Content-Length' => ::File.size(path).to_s,
        'Content-Type'   => Rack::Mime.mime_type(::File.extname(path))
      },
      [::File.read(path)]
    ]
  end
end
