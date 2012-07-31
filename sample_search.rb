require 'tire'
require 'pp'
require 'sinatra'

get '/' do

  q = ARGV[0]

  s = Tire.search 'posts' do
    query do
      string q
    end
  end

  s.results.each do |document|
    pp document
  end

end
