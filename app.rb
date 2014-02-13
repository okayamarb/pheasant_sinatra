require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'coffee-script'
require 'sass'
require './db_initialize'

require './model/user'


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

  get '/users.json' do
    User.all.to_json
  end
end

