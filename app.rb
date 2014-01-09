require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'coffee-script'
require 'sass'

class CoffeeRoute < Sinatra::Base
  get '/coffee/application' do
    coffee :'coffee/application'
  end
end

class ScssRoute < Sinatra::Base
  get '/scss/application' do
    scss :'scss/application'
  end
end


class Pheasant < Sinatra::Base
  use CoffeeRoute
  use ScssRoute
  get '/' do
    slim :index
  end
end

