$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'psique/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'psique'
  s.version     = Psique::VERSION
  s.authors     = ['Rankia']
  s.email       = ['rails@rankia.com']
  s.homepage    = 'https://github.com/Soluciones/Psique'
  s.summary     = "Style Guide in sass ready for Emergia's apps Rails."
  s.description = "Style Guide in sass ready for Emergia's apps Rails."
  s.license     = 'MIT'

  s.files = Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails'
  s.add_dependency 'sass-rails'
  s.add_dependency 'normalize-rails'
  s.add_dependency 'haml'
  s.add_dependency 'bourbon'
  s.add_dependency 'neat'

  s.add_development_dependency 'sqlite3'
end
