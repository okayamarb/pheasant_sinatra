require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'coffee-script'

class CoffeeRoute < Sinatra::Base
  get '/coffee/application' do
    coffee :'coffee/application'
  end
end


class Pheasant < Sinatra::Base
  use CoffeeRoute
  get '/' do
    slim :index
  end
end

