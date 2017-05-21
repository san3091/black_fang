require 'faker'

FactoryGirl.define do
  factory :dance do
    title Faker::Zelda.game
    description Faker::Hipster.sentence
  end
end
