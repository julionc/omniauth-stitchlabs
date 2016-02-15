# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/stitchlabs/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-stitchlabs'
  s.version  = OmniAuth::StitchLabs::VERSION
  s.authors  = ['Julio Napurí']
  s.email    = ['julionc@gmail.com']
  s.summary  = 'StitchLabs strategy for OmniAuth'
  s.homepage = 'http://www.stitchlabs.com/'
  s.license  = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'

  s.add_development_dependency 'rspec', '~> 2.13.0'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
