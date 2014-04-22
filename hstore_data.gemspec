# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hstore_data/version'

Gem::Specification.new do |spec|
  spec.name          = "hstore_data"
  spec.version       = HstoreData::VERSION
  spec.authors       = ["Marcelo Eden"]
  spec.email         = ["edendroid@gmail.com"]
  spec.description   = %q{Allow nested hashes for ActiveRecord's Hstore}
  spec.summary       = %q{Allow nested hashes for ActiveRecord's Hstore}
  spec.homepage      = "https://github.com/3den/HstoreData"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4.0.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
