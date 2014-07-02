# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'css-flags/version'

Gem::Specification.new do |spec|
  spec.name          = 'css-flags'
  spec.version       = CssFlags::VERSION
  spec.authors       = ['Nico Hagenburger']
  spec.email         = ['nico@hagenburger.net']
  spec.description   = %q{Country flags made with pure CSS}
  spec.summary       = %q{Country flags made with pure CSS to avoid loading of images.}
  spec.homepage      = 'http://css-flags.org'
  spec.license       = 'MIT'

  spec.files         = []#`git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'sass', '>= 3.3'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
end


