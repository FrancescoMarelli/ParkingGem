require_relative 'lib/Parking/version'

Gem::Specification.new do |spec|
  spec.name          = "Parking"
  spec.version       = Parking::VERSION
  spec.authors       = ["FrancescoMarelli"]
  spec.email         = ["alu0101161730@ull.edu.es"]

  spec.summary       = %q{Practica 7: Creación propia gema con  Bundle, Guard, Yard.}
  spec.description   = %q{Gema Aparcamiento.}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-2223/gema-francesco-marelli-alu0101161730.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "'https://github.com/ULL-ESIT-LPP-2223/gema-francesco-marelli-alu0101161730.git'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-2223/gema-francesco-marelli-alu0101161730.git"
  spec.metadata["changelog_uri"] = "https://github.com/ULL-ESIT-LPP-2223/gema-francesco-marelli-alu0101161730.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #A mano
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"

end
