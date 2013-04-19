require_relative 'spec_helper'
require 'json'

describe "Doc App" do
  
  it "should re-direct from /start to home" do
    get '/start/'
    last_response.should be_redirect
    last_response.location.should include '/doc'
  end

  it "should re-direct from Randor to Wistia Basics" do
    get '/randor-basics/'
    last_response.should be_redirect
    last_response.location.should include '/wistia-basics-getting-started'
  end

  it "should respond to search" do
    get '/search/media'
    parsed_body = JSON.parse(last_response.body)
    parsed_body["results"].length.should > 0
    parsed_body["results"][0]["title"].should_not be ""
    parsed_body["results"][0]["title"].should == "Guide to Using Media in Wistia"
  end
end
