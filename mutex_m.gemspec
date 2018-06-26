require_relative "lib/mutex_m"

Gem::Specification.new do |spec|
  spec.name          = "mutex_m"
  spec.version       = Mutex_m::VERSION
  spec.authors       = ["Keiju ISHITSUKA"]
  spec.email         = ["keiju@ruby-lang.org"]

  spec.summary       = %q{Mixin to extend objects to be handled like a Mutex.}
  spec.description   = %q{Mixin to extend objects to be handled like a Mutex.}
  spec.homepage      = "https://github.com/ruby/mutex_m"
  spec.license       = "BSD-2-Clause"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
end
