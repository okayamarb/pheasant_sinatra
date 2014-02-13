require 'active_record'
require 'pg'
require 'erb'

open(File.join(File.dirname(__FILE__), 'config', 'database.yml')) do |f|
  ActiveRecord::Base.configurations = YAML.load(ERB.new(f.read).result(binding))
  ActiveRecord::Base.establish_connection(ENV['RACK_ENV'])
end
