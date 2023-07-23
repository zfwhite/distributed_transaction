# frozen_string_literal: true

require_relative "lib/distributed_transaction/version"

Gem::Specification.new do |spec|
  spec.name = "distributed_transaction"
  spec.version = DistributedTransaction::VERSION
  spec.authors = ["Zachary White"]
  spec.email = ["zfwhite91@gmail.com"]

  spec.summary = "Easy distributed transactions with Ruby."
  spec.description = "Easy distributed transactions with Ruby."
  spec.homepage = "https://www.example.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["allowed_push_host"] = "https://example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/zfwhite/distributed_transaction"
  spec.metadata["changelog_uri"] = "https://github.com/zfwhite/distributed_transaction/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
