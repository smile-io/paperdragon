# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperdragon/version'

Gem::Specification.new do |spec|
  spec.name          = "paperdragon"
  spec.version       = Paperdragon::VERSION
  spec.authors       = ["Nick Sutterer"]
  spec.email         = ["apotonick@gmail.com"]
  spec.summary       = %q{Explicit image processing based on Dragonfly with Paperclip compatibility.}
  spec.description   = %q{Explicit image processing based on Dragonfly with Paperclip compatibility.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "dragonfly", "~> 1.4.0"
  spec.add_dependency "uber"

  spec.add_development_dependency "bundler", "~> 2.2.10"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
