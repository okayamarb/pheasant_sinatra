require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'coffee-script'
require 'sass'
require 'active_record'
require 'pg'

# DB設定ファイルの読み込み
ActiveRecord::Base.configurations = YAML.load_file(File.join(File.dirname(__FILE__), 'config', 'database.yml'))
ActiveRecord::Base.establish_connection(ENV['RACK_ENV'])

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

  end
end

