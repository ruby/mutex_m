begin
  require_relative "lib/mutex_m"
rescue LoadError
  # for Ruby core repository
  require_relative "mutex_m"
end

Gem::Specification.new do |spec|
  spec.name = "mutex_m"
  spec.version = Mutex_m::VERSION
  spec.authors = ["Keiju ISHITSUKA"]
  spec.email = ["keiju@ruby-lang.org"]

  spec.summary = "Mixin to extend objects to be handled like a Mutex."
  spec.description = spec.summary
  spec.homepage = "https://github.com/ruby/mutex_m"
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.licenses = %w[Ruby BSD-2-Clause]

  spec.files = %w[LICENSE.txt README.md lib/mutex_m.rb]
  spec.required_ruby_version = ">= 2.5"
end
