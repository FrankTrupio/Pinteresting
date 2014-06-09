ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)

require "factory_girl_rails"
# require 'capybara/rspec'
require "capybara/rails"
require "minitest/autorun"
require "minitest/spec"


FactoryGirl.find_definitions

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
end

class Minitest::Test
  include FactoryGirl::Syntax::Methods
  include Capybara::DSL
end

class Minitest::SharedExamples < Module
  include Minitest::Spec::DSL
end

# include extensions
Dir["#{File.dirname(__FILE__)}/spec_extensions/*.rb"].each do |file|
  require file.sub(".rb$","")
end
