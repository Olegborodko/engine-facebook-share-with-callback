$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "facebookshare/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "facebookshare"
  s.version     = Facebookshare::VERSION
  s.authors     = ["Olegborodko"]
  s.email       = ["borodkoleg@gmail.com"]
  s.homepage    = "borodkoleg@gmail.com"
  s.summary     = "Facebook share with callback"
  s.description = "Facebook share with callback"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  # s.add_development_dependency "sqlite3"
end
