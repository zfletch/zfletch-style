require_relative "lib/zfletch_style/version"

Gem::Specification.new do |spec|
  spec.name = "zfletch-style"
  spec.version = ZfletchStyle::VERSION
  spec.licenses = ["MIT"]
  spec.authors = ["zfletch"]
  spec.email = ["zf.rubygems@gmail.com"]

  spec.summary = "Custom style guide configurations"
  spec.description = "Style guide configurations for Ruby projects, Rails applications, and Gems"
  spec.homepage = "https://github.com/zfletch/zfletch-style"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "Rakefile",
    "bin/console",
    "rubocop/rubocop.yml",
    "rubocop/rubocop_gem.yml",
    "rubocop/rubocop_rails.yml",
    "lib/zfletch_style.rb",
    "lib/zfletch_style/version.rb",
    "zfletch-style.gemspec",
  ]
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.50"
  spec.add_dependency "rubocop-performance", "~> 1.17"
  spec.add_dependency "rubocop-rails", "~> 2.19"
  spec.add_dependency "rubocop-rake", "~> 0.6"
end
