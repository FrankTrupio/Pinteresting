# require "spec_helper"

FactoryGirl.define do
  sequence(:name) { |n| "example name#{n}"}
  sequence(:email) { |n| "example@example#{n}.com" }
  sequence(:password) { |n| "example#{n}password" }
end
