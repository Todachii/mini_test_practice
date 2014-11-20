# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mini_test_practice'

Gem::Specification.new do |spec|
  spec.name          = "mini_test_practice"
  spec.version       = MiniTestPractice::VERSION
  spec.authors       = ["kikuko toda"]
  spec.email         = ["k-toda@gmail.com"]
  spec.summary       = %q{This is my homework.}
  spec.description   = %q{This is my homework.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
