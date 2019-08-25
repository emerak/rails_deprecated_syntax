require 'rake/task'
require 'rails_deprecated_syntax'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Run tests'
task :default => :test

desc 'Run deprecation finder'
task :show_deprecations do |task, args|
  RailsDeprecatedSyntax.show_deprecations(args)
end
