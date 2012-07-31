require 'tire'
require 'pp'
require 'sinatra'

get "/search/:q" do
  q = params[:q]

  s = Tire.search 'posts' do
    query do
      string q
    end
  end

  response_string = ""

  s.results.each do |document|
    response_string << "#{ document.title }\n#{ document.url }\n#{ document.description }\n\n"
  end

  response_string
end
