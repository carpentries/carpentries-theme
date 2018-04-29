# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "carpentry-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["David Pérez-Suárez"]
  spec.email         = ["dps.helio@gmail.com"]

  spec.summary       = %q{A theme ready to use for carpentry lessons.}
  spec.homepage      = "https://github.com/swcarpentry-i18n/carpentry-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
