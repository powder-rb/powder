# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "powder/version"

Gem::Specification.new do |s|
  s.name        = "powder"
  s.version     = Powder::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Phil Nash", "Adam Rogers", "Mert Torun"]
  s.email       = ["no"]
  s.homepage    = "http://github.com/Rodreegez/powder"
  s.summary     = %q{Makes Pow even easier}
  s.description = %q{Makes Pow even easier. I mean really, really, ridiculously easy.}

  s.rubyforge_project = "powder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ["powder"]
  s.require_paths = ["lib"]

  s.add_dependency 'thor', '>=0.11.5'
end
