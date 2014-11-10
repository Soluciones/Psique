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

  s.files = Dir['{app,config,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.1.7'
  s.add_development_dependency 'sqlite3'
  s.add_runtime_dependency 'sass'
end
