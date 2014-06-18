ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)

require 'minitest/autorun'
require 'minitest/spec'
require "rails/test_help"
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'factory_girl'

class ActiveSupport::TestCase
    ActiveRecord::Migration.check_pending!


    # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class MiniTest::Test
  include Capybara::DSL
  include FactoryGirl::Syntax::Methods
end
