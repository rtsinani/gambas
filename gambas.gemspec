$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gambas/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gambas"
  s.version     = Gambas::VERSION
  s.authors     = ["rtsinani"]
  s.email       = ["artisinani@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Inline PDF templates that use prawn."
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  s.add_dependency "prawn"

  s.add_development_dependency "capybara"
  s.add_development_dependency "sqlite3"
end
