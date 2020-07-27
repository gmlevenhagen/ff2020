
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ff2020/version"

Gem::Specification.new do |spec|
  spec.name          = "ff2020"
  spec.version       = Ff2020::VERSION
  spec.authors       = ["'Garett Levenhagen'"]
  spec.email         = ["'garettlevenhagen@gmail.com'"]

  spec.summary       = %q{ Fantasy football rankings}
  spec.description   = %q{ Fantasy football rankings.}
  spec.homepage      = 'http://fantasypros.com'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] =  'http://mygemserver.com'

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = 'https://www.fantasypros.com/nfl/rankings/patrick-mahomes.php?type=draft&position=QB&scoring=STD'
    spec.metadata["changelog_uri"] = 'http://fantasypros.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_dependency "rake", "~> 12.3.3"
  spec.add_dependency "nokogiri"
end
