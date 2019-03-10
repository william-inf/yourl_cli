
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yourl_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "yourl_cli"
  spec.version       = YourlCli::VERSION
  spec.authors       = ["william"]
  spec.email         = ["me@williamthom.as"]

  spec.summary       = "CLI tool for interacting with yourl.io"
  spec.description   = "CLI tool for interacting with yourl.io, listing and adding bookmarks."
  spec.homepage      = "https://www.yourl.io"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = ["yourl_cli"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "httparty", "~> 0.16.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "svc_party", "~> 0.0.6"

end
