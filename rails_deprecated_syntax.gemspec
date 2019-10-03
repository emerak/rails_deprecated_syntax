Gem::Specification.new do |s|
  s.name        = 'rails_deprecated_syntax'
  s.version     = '0.0.1'
  s.date        = '2019-05-16'
  s.summary     = 'Shows deprecated syntax and the alternative on Rails version 5'
  s.description = "When trying to upgrate to Rails 5, there could be lots of methods that not longer work, this gem aims to find the easy replaceable deprecated methods within your app based on the Release Notes of version 5"
  s.authors     = ['Alejandra S. Cernas']
  s.email       = 'stephaniacernas@gmail.com'
  s.files       = Dir['lib/**/*.rb']
  s.executables = ['check_deprecations']
  s.homepage    =
    'https://github.com/emerak/rails_deprecated_syntax'
  s.license       = 'MIT'
end
