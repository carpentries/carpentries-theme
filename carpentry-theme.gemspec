# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "carpentries-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["The Carpentries Team"]
  spec.email         = ["team@carpentries.org"]

  spec.summary       = %q{A theme ready to use for The Carpentries lessons.}
  spec.homepage      = "https://github.com/carpentries/carpentries-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8.5"

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", ">= 12.3.3"
end
