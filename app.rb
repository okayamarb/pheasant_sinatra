require 'sinatra'

class Pheasant < Sinatra::Base
  get '/' do
    'Hello'
  end
end
