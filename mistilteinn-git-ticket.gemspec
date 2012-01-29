# -*- coding: utf-8 -*-
require File.expand_path('../lib/mistilteinn/git-ticket/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["mzp"]
  gem.email         = ["mzp@ocaml.jp"]
  gem.description   = %q{git subcommand to collaborate with ticket management system}
  gem.summary   = %q{git subcommand to collaborate with ticket management system}
  gem.homepage      = "https://github.com/mistilteinn/git-ticket"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "mistilteinn-git-ticket"
  gem.require_paths = ["lib"]
  gem.version       = Mistilteinn::GitTicket::VERSION

  gem.add_dependency 'json', ['>= 0'] unless defined? JSON
  gem.add_development_dependency 'rspec', ['>= 0']
end
