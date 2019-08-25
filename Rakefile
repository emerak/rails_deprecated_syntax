require 'rake/task'
require 'rails_deprecated_syntax'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Run tests'
task :default => :test

desc 'Run deprecation finder'
task :show_deprecations do
  RailsDeprecatedSyntax.show_deprecations(ARGV[1])
end
