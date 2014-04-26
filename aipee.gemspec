# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aipee/version'

Gem::Specification.new do |spec|
  spec.name          = "aipee"
  spec.version       = Aipee::VERSION
  spec.authors       = ["suu-g"]
  spec.email         = ["suu-g@kata.me"]
  spec.summary       = %q{an `IPAddr` class extention suite}
  spec.description   = %q{Aipee is an `IPAddr` class extention suite. It adds many useful methods into `IPAddr` class.}
  spec.homepage      = "http://github.com/suu-g/aipee"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ipaddr"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
