FactoryGirl.define do
  factory :video do
    youtube_url Faker::Internet.url
    title Faker::Ancient.primordial 
  end
end
