require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world'
end

get '/about' do
  'About'
end