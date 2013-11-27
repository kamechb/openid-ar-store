$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "openid_ar_store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openid_ar_store"
  s.version     = OpenidArStore::VERSION
  s.authors     = ["kamechb"]
  s.email       = ["kamechb@gmail.com"]
  s.homepage    = ""
  s.summary     = "OpenID ActiveRecord Store."
  s.description = "OpenID ActiveRecord Store."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_dependency "ruby-openid", "~> 2.3.0"
  s.add_dependency "activerecord"
end
