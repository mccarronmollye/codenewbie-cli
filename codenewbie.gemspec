lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "codenewbie/version"

Gem::Specification.new do |spec|
  spec.name          = "codenewbie"
  spec.version       = Codenewbie::VERSION
  spec.authors       = ["Molly McCarron"]
  spec.email         = ["mccarronmollye@gmail.com"]

  spec.summary       = %q{Codenewbie podcast CLI.}
  spec.description   = %q{Lists of podcast epsiodes from https://www.codenewbie.org/podcast}
  spec.homepage      = "https://github.com/mccarronmollye/codenewbie"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  #  spec.metadata["homepage_uri"] = spec.homepage
  #  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["codenewbie"]
  spec.require_paths = ["lib"]

    spec.add_development_dependency "bundler", "~> 1.17"
    spec.add_development_dependency "rake", "~> 10.0"
    spec.add_development_dependency "rspec", "~> 3.0"
    spec.add_development_dependency "pry"
    spec.add_development_dependency "gem-release"
    spec.add_development_dependency "nokogiri"
end