FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    provider "facebook"
    uid SecureRandom.hex
  end
end
