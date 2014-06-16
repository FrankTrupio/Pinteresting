ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)

require 'minitest/spec'
require 'minitest/autorun'
require 'minitest-rails'
require 'minitest-rails-capybara'
