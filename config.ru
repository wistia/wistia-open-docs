require 'sinatra'

APP_ROOT = File.join(File.dirname(__FILE__))
require File.join(APP_ROOT, 'search_app.rb')

run Sinatra::Application
