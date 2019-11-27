lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stream_lines/version"

Gem::Specification.new do |spec|
  spec.name          = "stream_lines"
  spec.version       = StreamLines::VERSION
  spec.authors       = ["Joel Lubrano"]
  spec.email         = ["joel.lubrano@gmail.com"]

  spec.summary       = 'A utility to stream lines of a file over HTTP'
  spec.homepage      = 'https://github.com/jdlubrano/stream_lines'
  spec.license       = 'MIT'

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/jdlubrano/stream_lines'
  spec.metadata["changelog_uri"] = 'https://github.com/jdlubrano/stream_lines/releases'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'bin'
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'httparty', '~> 0.14'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end