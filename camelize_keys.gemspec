# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'camelize_keys/version'

Gem::Specification.new do |spec|
  spec.name          = "camelize_keys"
  spec.version       = CamelizeKeys::VERSION
  spec.authors       = ["Daniel Evans"]
  spec.email         = ["evans.daniel.n@gmail.com"]

  spec.summary       = %q{A simple and naive enumerable transformer between underscored hash keys and camelized hash keys}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/rocketmade/camelize_keys"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "activesupport", "> 4.0"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
