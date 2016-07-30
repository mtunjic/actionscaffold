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
  s.description = "Make Rails controllers clean & DRY.
                   Rails view support for bootstrap 4, uikit, skeleton and html5boilerplate."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
