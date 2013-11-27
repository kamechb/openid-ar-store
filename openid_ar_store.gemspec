$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "openid_ar_store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openid_ar_store"
  s.version     = OpenidArStore::VERSION
  s.authors     = ["Kamechb"]
  s.email       = ["kamechb@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of OpenidArStore."
  s.description = "TODO: Description of OpenidArStore."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.15"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_dependency "ruby-openid", "~> 2.3.0"
  s.add_dependency "activerecord"
end
