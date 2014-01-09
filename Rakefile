require 'rspec'
require 'rspec/core/rake_task'

task :default => [:spec]

task :spec do
  RSpec::Core::RakeTask.new do |t|
    t.pattern = './spec/*{_spec.rb}'
  end
end