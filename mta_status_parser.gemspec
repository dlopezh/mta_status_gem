# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mta_status_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "mta_status_parser"
  spec.version       = MtaStatusParser::VERSION
  spec.authors       = ["dlopezh"]
  spec.email         = ["daniellopezh@gmail.com"]
  spec.description   = "A simple parser for the MTA's status page"
  spec.summary       = "Make use of the MTA's status"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "nokogiri", "~> 1.6.1"
  spec.add_development_dependency "sanitize", "~> 2.1.0"
end
