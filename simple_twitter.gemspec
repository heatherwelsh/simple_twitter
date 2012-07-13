# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_twitter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["VRWebworx"]
  gem.email         = ["vrwebworx@gmail.com"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple_twitter"
  gem.require_paths = ["lib"]
  gem.version       = SimpleTwitter::VERSION
  gem.add_dependency('httparty','~> 0.8.3')
end
