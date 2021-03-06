# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'usastandards/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "usastandards-rails"
  spec.version       = Usastandards::Rails::VERSION
  spec.authors       = "Jon Moss"
  spec.email         = "me@jonathanmoss.me"

  spec.summary       = "Rails useable version of the 18F Web Design Standards"
  spec.description   = "Rails useable version of the 18F Web Design Standards"
  spec.homepage      = "https://github.com/moss-rb/usastandards-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
