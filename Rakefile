# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Pinteresting::Application.load_tasks

namespace :test do
  
  ENV["RACK_ENV"] = "test"
  task :run do

    $LOAD_PATH.unshift("lib", "spec")
    if ARGV[1]
      require_relative ARGV[1]
    else
      Dir.glob("./spec/**/*_spec.rb").each { |file| require file }
    end
  end
end
