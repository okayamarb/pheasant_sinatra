
require 'sinatra'
require 'rack/test'
require 'rspec'

set :environment, :test
require File.join(File.dirname(__FILE__), '..', 'app.rb')

set :run, false
set :raise_errors, true
set :logging, false