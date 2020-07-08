require_relative 'lib/petfinder_cli_mod1/version'

Gem::Specification.new do |spec|
  spec.name          = "petfinder_cli_mod1"
  spec.version       = PetfinderCliMod1::VERSION
  spec.authors       = ["M. Gage Morgan"]
  spec.email         = ["gage@gages.blog"]

  spec.summary       = %q{Retrieve info about pets up for adoption in your local area}
  spec.description   = %q{CLI to allow you to enter a location and pull up descriptions for pets in the given location}
  spec.homepage      = "https://github.com/MGageMorgan/mod1-cli-final-project"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://gages.blog"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["petfinder_cli_mod"] 
  spec.require_paths = ["lib"]

  spec.add_dependency "pry"
  spec.add_dependency "gem-release"
  spec.add_dependency "dotenv"
  spec.add_dependency "httparty"
  spec.add_dependency "http"
end
