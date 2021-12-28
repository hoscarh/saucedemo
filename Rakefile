require "rubygems"
require "rake/testtask"
require "rspec/core/rake_task"

task :runRSpecTest, [:browser] do |t, args|

  ENV["BROWSER"] = args.browser

  Rake::Task[:runRSpecTest].invoke()
end

RSpec::Core::RakeTask.new(:runRSpecTest) do |t|
  t.pattern = "spec/*_specs.rb"
end
