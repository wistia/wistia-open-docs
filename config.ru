#\ -p 3040

require 'rubygems'
require 'bundler'

Bundler.require

require File.expand_path '../the_app.rb', __FILE__
run TheApp
