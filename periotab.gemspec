# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "periotab/version"

Gem::Specification.new do |spec|
  spec.name          = "periotab"
  spec.version       = Periotab::VERSION
  spec.authors       = ["Codius Nomadus"]
  spec.email         = ["thecodenomad@gmail.com"]

  spec.summary       = %q{Provides data for the periodic table.}
  spec.homepage      = "https://github.com/codiusnomadus/periotab"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files            = ["lib/periotab.rb", "lib/periotab/translator.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
