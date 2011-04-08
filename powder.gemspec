# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "powder/version"

Gem::Specification.new do |s|
  s.name        = "powder"
  s.version     = Pow::Gem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Phil Nash", "Adam Rogers"]
  s.email       = ["no"]
  s.homepage    = "http://github.com/Rodreegez/pow-gem"
  s.summary     = %q{Makes Pow even easier}
  s.description = %q{seriously, it's easy.}

  s.rubyforge_project = "powder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ["pow"]
  s.require_paths = ["lib"]

  s.add_dependency 'thor', '>=0.14.6'
end
