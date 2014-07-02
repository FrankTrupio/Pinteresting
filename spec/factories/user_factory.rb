require "factory_girl"

FactoryGirl.define do
  factory :user do
    name
    email
    password
  end
end
