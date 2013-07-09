require 'faker'

FactoryGirl.define do
  factory :second do
    date 'today'
    uid Faker::Name.name
  end
end