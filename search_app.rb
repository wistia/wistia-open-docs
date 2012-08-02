require 'tire'
require 'pp'
require 'sinatra'
require 'haml'

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

