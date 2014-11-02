# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'craps/version'

Gem::Specification.new do |spec|
  spec.name          = "craps"
  spec.version       = Craps::VERSION
  spec.authors       = ["Ole Henrik Skogstrøm"]
  spec.email         = ["oleskogstrom@gmail.com"]
  spec.description   = %q{This gem gives you a basic dice simulator along with some probability caltucations.}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = "https://github.com/ohenrik/craps"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
