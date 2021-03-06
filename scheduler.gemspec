# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scheduler/version'

Gem::Specification.new do |spec|
  spec.name          = "scheduler"
  spec.version       = Scheduler::VERSION
  spec.authors       = ["Hsing-Hui Hsu"]
  spec.email         = ["hhhsu1@gmail.com"]
  spec.summary       = %q{Tells the Adies where to go.}
  spec.description   = %q{On Friday.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
