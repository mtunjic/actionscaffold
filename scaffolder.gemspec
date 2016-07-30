$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scaffolder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scaffolder"
  s.version     = Scaffolder::VERSION
  s.authors     = [""]
  s.email       = ["marko.tunjic@icloud.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Scaffolder."
  s.description = "TODO: Description of Scaffolder."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
