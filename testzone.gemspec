require_relative 'lib/testzone/version'

Gem::Specification.new do |spec|
  spec.name          = 'testzone'
  spec.version       = Testzone::VERSION
  spec.authors       = ['Johan Tique']
  spec.email         = ['johan.tique@endava.com']

  spec.summary       = 'This is a test zone'
  spec.description   = 'This is a test zone'
  spec.homepage      = 'https://endava.com'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/jtique-endava/testzone'
  spec.metadata['changelog_uri'] = 'https://github.com/jtique-endava/testzone'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency('pry', '~> 0.14.1')
  spec.add_development_dependency('rubocop', '~> 1.30.1')
  spec.add_development_dependency('simplecov', '~> 0.21.2')
  spec.add_development_dependency('webmock', '~> 3.0')
end
