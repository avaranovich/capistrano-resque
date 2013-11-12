require "capistrano-resque/version"
require "capistrano/version"

if Gem::Version.new(Capistrano::VERSION)).release >= Gem::Version.new('3.0.0')
  load File.expand_path("../capistrano-resque/tasks/capistrano-resque.rake", __FILE__)
else
  require "capistrano-resque/capistrano_integration"
end

