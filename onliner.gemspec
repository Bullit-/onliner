# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onliner/version'

Gem::Specification.new do |spec|
  spec.name          = "onliner"
  spec.platform    = Gem::Platform::RUBY
  spec.version       = Onliner::VERSION
  spec.authors       = ["kbokhonko"]
  spec.email         = ["kolya.bokhonko@gmail.com"]
  spec.description   = "Who's online"
  spec.summary       = %q{Who's online}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency('redis', '~> 3.0.6')
  spec.add_dependency "redis-namespace", ">= 1.3.0"
end