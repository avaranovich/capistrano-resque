require "capistrano-resque/version"

if defined?(Capistrano::Version) && Gem::Version.new(Capistrano::Version).release >= Gem::Version.new('3.0.0')
  load File.expand_path("../capistrano-resque/tasks/capistrano-resque.rake", __FILE__)
else
  require "capistrano-resque/capistrano_integration"
end

