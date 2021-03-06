# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'karabiner/version'

Gem::Specification.new do |spec|
  spec.name          = "karabiner"
  spec.version       = Karabiner::VERSION
  spec.authors       = ["Takashi Kokubun"]
  spec.email         = ["takashikkbn@gmail.com"]
  spec.summary       = %q{Lightweight keyremap configuration DSL}
  spec.description   = %q{Lightweight keyremap configuration DSL for Karabiner}
  spec.homepage      = "https://github.com/k0kubun/karabiner-dsl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.3.2"
  spec.add_development_dependency "rspec", "~> 3.0.0"
  spec.add_development_dependency "pry"
  spec.add_dependency 'unindent', '~> 1.0'
end
