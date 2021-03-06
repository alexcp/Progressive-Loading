# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'progressive_loading/version'

Gem::Specification.new do |spec|
  spec.name          = "progressive_loading"
  spec.version       = ProgressiveLoading::VERSION
  spec.authors       = ["Alexandre Croteau-Pothier"]
  spec.email         = ["alex@alexcp.com"]

  spec.summary       = %q{Add progressive loading to images}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionview", ">= 4.2"
  spec.add_dependency "railties", ">= 4.2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails", "~> 3.0"
  spec.add_development_dependency "rails", "~> 4.2"
  spec.add_development_dependency "sqlite3"
end
