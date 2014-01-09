require 'sinatra'
require 'sinatra/reloader'
require 'slim'

class Pheasant < Sinatra::Base
  get '/' do
    slim :index
  end

end
