FactoryGirl.define do
  sequence(:name) { |n| "example name#{n}"}
  sequence(:email) { |n| "example@example#{n}.com" }
end
