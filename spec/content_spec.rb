require_relative 'spec_helper'

describe "Content" do

  before(:each) do
    @posts = []
    Dir.foreach('_posts') do |p|
      @posts << IO.read("_posts/#{p}") if p.match(/^[^.]\w/)
    end
  end

  it "should have valid yaml" do
    @posts.each do |post|
      if !YAML.load(post)
        puts post
        return "didn't have valid YAML"
      end
    end
  end
end
