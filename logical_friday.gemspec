require_relative 'lib/logical_friday/version'

Gem::Specification.new do |spec|
  spec.name          = 'logical_friday'
  spec.version       = LogicalFriday::VERSION
  spec.authors       = ['t_uyama']
  spec.email         = ['sasurai.usagi3@gmail.com']

  spec.summary       = 'add methods return logical friday to Date class'
  spec.description   = 'This gem add methods that return if logical friday to Date class.'
  spec.homepage      = 'https://github.com/sasurai-usagi3/logical_friday'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.5')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/sasurai-usagi3/logical_friday'
  spec.metadata['changelog_uri'] = 'https://github.com/sasurai-usagi3/logical_friday/releases'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'holiday_jp', '~> 0.7.1'
end
