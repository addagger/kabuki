# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kabuki/version'

Gem::Specification.new do |gem|
  gem.name          = "kabuki"
  gem.version       = Kabuki::VERSION
  gem.authors       = ["Valery Kvon"]
  gem.email         = ["addagger@gmail.com"]
  gem.homepage      = %q{http://vkvon.ru/projects/kabuki}
  gem.description   = %q{Customized dump solution for URL purposes}
  gem.summary       = %q{Dump and encrypt arrays, strings, symbols, hashes and other Ruby objects}

  gem.rubyforge_project = "kabuki"

  gem.add_development_dependency "activesupport"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.licenses       = ['MIT']
end
