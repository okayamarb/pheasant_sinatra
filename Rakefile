require 'rspec'
require 'rspec/core/rake_task'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

ActiveRecord::Base.configurations = YAML.load_file(File.join(File.dirname(__FILE__), 'config', 'database.yml'))
ActiveRecord::Base.establish_connection(ENV['RACK_ENV'])

task :default => [:spec]

task :spec do
  RSpec::Core::RakeTask.new do |t|
    t.pattern = './spec/*{_spec.rb}'
  end
end