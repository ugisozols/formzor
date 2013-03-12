# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_forms_example/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_forms_example"
  spec.version       = RailsFormsExample::VERSION
  spec.authors       = ["Uģis Ozols"]
  spec.email         = ["ugis@ugisozols.com"]
  spec.description   = %q{$$$ idea}
  spec.summary       = %q{$$$ idea}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13"

  spec.add_dependency "actionpack"
  spec.add_dependency "railties"
  spec.add_dependency "bootstrap-sass", "~> 2.3.0.1"
end
