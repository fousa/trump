# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trump/version'

Gem::Specification.new do |spec|
  spec.name          = "trump"
  spec.version       = Trump::VERSION
  spec.authors       = ["Jelle Vandebeeck"]
  spec.email         = ["jelle@fousa.be"]
  spec.description   = %q{Add a gem to the Gemfile with more info in comments.}
  spec.summary       = %q{Add a gem to the Gemfile with more info in comments.}
  spec.homepage      = "http://github.com/fousa/trump"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'thor', '0.18.1'
  spec.add_dependency "json_pure", "~> 1.8.0"
  spec.add_dependency "curl_wrapper", "~> 0.0.3"
  spec.add_dependency "clipboard", "~> 1.0.5"
end
