FactoryGirl.define do
  factory :video do
    youtube_link Faker::Internet.url 
    title Faker::Ancient.primordial 
  end
end
