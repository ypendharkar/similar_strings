# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'similar_strings/version'

Gem::Specification.new do |spec|
  spec.name          = "similar_strings"
  spec.version       = SimilarStrings::VERSION
  spec.authors       = ["Yogesh Pendharkar"]
  spec.email         = ["yogesh.pendharkar@gmail.com"]
  spec.description   = %q{Computes similarity score between 2 strings based on Sørensen–Dice coefficient (http://en.wikipedia.org/wiki/Dice's_coefficient).}
  spec.summary       = %q{Computes how similar 2 strings are.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
