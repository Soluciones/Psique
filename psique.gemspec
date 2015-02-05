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
  s.summary     = "Style Guide in sass/compass ready for Emergia's apps Rails."
  s.description = "Style Guide in sass/compass ready for Emergia's apps Rails."
  s.license     = 'MIT'

  s.files       = `git ls-files`.split($RS)
  s.test_files  = Dir['test/**/*']

  s.add_development_dependency 'rails', '~> 4.1.5'
  s.add_development_dependency 'sprockets', '~> 2.11.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'hologram', '~> 1.2.0'

  s.add_dependency 'sass-rails', '~> 4.0.1'
  s.add_dependency 'compass-rails', '~> 2.0.1'
  s.add_dependency 'normalize-scss', '~> 3.0.2'
  s.add_dependency 'breakpoint', '~> 2.5.0'
  s.add_dependency 'susy', '~> 2.1.3'
  s.add_dependency 'haml', '~> 4.0.5'
  s.add_dependency 'font-awesome-rails', '~> 4.2.0.0'
  s.add_dependency 'coffee-rails', '~> 4.1.0'
end
