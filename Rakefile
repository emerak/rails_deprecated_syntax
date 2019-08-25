require 'rake/task'
require 'rails_deprecated_syntax'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Run tests'
task :default => :test

desc 'Run deprecation finder'
task :check_deprecations do |task, args|
  RailsDeprecatedSyntax.check_deprecations(args)
end
