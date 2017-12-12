lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primer/version'

Gem::Specification.new do |spec|
  spec.name = 'primer'
  spec.version = Primer::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Benchprep']
  spec.email = ['developers@benchprep.com']

  spec.summary = 'Start services easily for ruby applications'
  spec.description = 'Start services easily for ruby applications'
  spec.homepage = 'https://github.com/watermelonexpress/primer'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|.keep)/})
  end
  spec.test_files = Dir['spec/**/*']
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'

  spec.add_runtime_dependency 'thor', '~> 0.16'
end
