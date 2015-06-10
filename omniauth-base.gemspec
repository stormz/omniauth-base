# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-base/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["François de Metz"]
  gem.email = ["francois@stormz.me"]
  gem.description = %q{OmniAuth strategy for Base.}
  gem.summary = %q{OmniAuth strategy for Base.}
  gem.homepage = "https://github.com/stormz/omniauth-base"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-base"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::Base::VERSION

  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
