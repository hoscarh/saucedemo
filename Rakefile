require "rubygems"
require "rake/testtask"
require "rspec/core/rake_task"

task :runTest, [:browser] do |t, args|
  ENV["BROWSER"] = args.browser
  ENV['CONFIG_NAME'] ||= "single"

  Rake::Task[:browserstackTest].invoke()
  Rake::Task[:browserstackTest].reenable()
end

RSpec::Core::RakeTask.new(:browserstackTest) do |t|
  t.pattern = "spec/*_specs.rb"
  t.rspec_opts = '--format documentation'
  t.verbose = false
end
