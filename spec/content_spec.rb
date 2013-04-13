require_relative 'spec_helper'
require 'yaml'
require 'psych'

describe "Content" do

  before(:each) do
    @posts = []
    Dir.foreach('_posts') do |p|
      @posts << IO.read("_posts/#{p}") if p.match(/^[^.]\w/)
    end
  end

  it "should have valid yaml" do
    @posts.each do |post|
      begin
        YAML.load(post)
      rescue Psych::SyntaxError => e
        pp e
        pp post
        raise "Post syntax is not valid"
      end
    end
  end
end
