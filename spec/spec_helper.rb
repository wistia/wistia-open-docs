require 'rubygems'
require 'bundler'
Bundler.require

require File.join(File.dirname(__FILE__), '..', 'the_app.rb')

require 'rack/test'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  @app ||= TheApp.new
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
