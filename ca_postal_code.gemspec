
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ca_postal_code/version"

Gem::Specification.new do |spec|
  spec.name          = "ca_postal_code"
  spec.version       = CAPostalCode::VERSION
  spec.authors       = ["Jonathan Allard"]
  spec.email         = ["jonathan@allard.io"]

  spec.summary       = %q{Guesses the Canadian province or territory (region) based on the postal code.}
  # spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/joallard/ca-postal-code"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end