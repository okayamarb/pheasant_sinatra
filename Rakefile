require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

task :default => [:spec]

task :spec do
  require 'rspec'
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new do |t|
    t.pattern = './spec/*{_spec.rb}'
  end
end

task :before_db do
  require './db_initialize'
end

namespace :db do |ns|
  ns.tasks.each do |db_task|
    db_task.enhance([:before_db])
  end
end
