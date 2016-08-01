$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "actionscaffold/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "actionscaffold"
  s.version     = ActionScaffold::VERSION
  s.authors     = ["Marko Tunjic"]
  s.email       = ["marko.tunjic@live.com"]
  s.homepage    = "https://github.com/mtunjic/actionscaffold"
  s.summary     = "Better default templates for Rails scaffold generator."
  s.description = "Better default templates for Rails scaffold generator."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails",      "~> 5.0.0"
  s.add_dependency "responders", "~> 2.2.0"
  s.add_dependency "bootstrap",  "~> 4.0.0.alpha3"
  s.required_ruby_version        = '>= 2.2.2'

  s.add_development_dependency "sqlite3"
end
