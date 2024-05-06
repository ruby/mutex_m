require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

task :default => :test

namespace :rbs do
  desc "Update embedded RDoc comments in RBS files"
  task :rdoc do
    sh "rm -rf tmp/rbs/ri"
    sh "mkdir -p tmp/rbs"
    sh "rdoc lib --format=ri -o tmp/rbs/ri"
    sh "rbs annotate --dir=tmp/rbs/ri --no-system --no-filename sig"
  end
end
