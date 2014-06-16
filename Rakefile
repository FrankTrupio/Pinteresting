require File.expand_path('../config/application', __FILE__)

Pinteresting::Application.load_tasks

namespace :test do
  task :run do
    ENV["RACK_ENV"] = "test"
    $LOAD_PATH.unshift("lib", "spec")
    if ARGV[1]
      require_relative ARGV[1]
    else
      Dir.glob("./spec/**/*_spec.rb").each { |file| require file }
    end
  end
end
