# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "row_boat/version"

Gem::Specification.new do |spec|
  spec.name = "gunwale"
  spec.version = RowBoat::VERSION
  spec.authors = ["Charlton Trezevant"]
  spec.email = ["charlton@packfiles.io"]

  spec.summary = "Turn the rows of your CSV into rows in your database"
  spec.description = "Turn the rows of your CSV into rows in your database"
  spec.homepage = "https://github.com/packfiles/gunwale"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 7.1", "< 9.0"
  spec.add_dependency "activerecord-import", ">= 1.6", "< 2.0"
  spec.add_dependency "smarter_csv", ">= 1.13", "< 2.0"

  spec.add_development_dependency "appraisal", "~> 2.5"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "bundler", "~> 2.5.9"
  spec.add_development_dependency "database_cleaner", "~> 2.1", ">= 2.1.0"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-doc"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "rake", "~> 13.2", ">= 13.2.1"
  spec.add_development_dependency "rspec", "~> 3.13"
  spec.add_development_dependency "rubocop", "~> 1.63", ">= 1.63.5"
  spec.add_development_dependency "standalone_migrations", ">= 7.1", "< 9.0"
  spec.add_development_dependency "yard", "~> 0.9.36"
end
