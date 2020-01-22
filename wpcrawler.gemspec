require_relative 'lib/wpcrawler/version'

Gem::Specification.new do |s|
  s.name        = 'wpcrawler'
  s.version     = '0.0.1'
  s.date        = '2020-01-22'
  s.summary     = "Simple wordpress crawler"
  s.description = "A simple crawler that gets posts and pages from wordpress websites that have an exposed api"
  s.authors     = ["Duarte Martins"]
  s.files       = ["lib/wpcrawler.rb"]
  s.require_paths = ["lib"]
  s.homepage    = 'https://rubygems.org/gems/wpcrawler'
  s.executables << 'wpcrawler'
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  s.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://www.github.com/duartemartins/wpcrawler"
  s.metadata["documentation_uri"] = "https://www.github.com/duartemartins/wpcrawler"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]
end