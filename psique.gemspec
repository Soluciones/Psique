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

  s.add_development_dependency 'rails'
  s.add_development_dependency 'sprockets', '~> 2.11.0'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rails-assets-holderjs'
  s.add_development_dependency 'hologram'

  s.add_dependency 'sass-rails'
  s.add_dependency 'compass-rails'
  s.add_dependency 'normalize-scss'
  s.add_dependency 'breakpoint'
  s.add_dependency 'susy'
end
