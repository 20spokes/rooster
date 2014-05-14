$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rooster/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rooster"
  s.version     = Rooster::VERSION
  s.authors     = ["Ryan Fischer"]
  s.email       = ["ryan.fischer@20spokes.com"]
  s.homepage    = "http://www.20spokes.com"
  s.summary     = "Rooster is a CMS"
  s.description = "Rooster is a CMS"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"
  s.add_dependency "devise", "~> 3.2"

  s.add_dependency "haml", "~> 4.0"

#  s.add_dependency "bourbon", "~> 3.2"
#  s.add_dependency "neat", "~> 1.5"

  s.add_development_dependency "sqlite3"
end
