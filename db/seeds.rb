# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
ApplicationRecord.transaction do
  puts "starting db seed"

  mike = User.create! email: Faker::Internet.email, 
                      first_name: "Mike",
                      last_name: "Gergory"

  dance = Dance.create! title: Faker::Food.ingredient,
                        description: Faker::Food.measurement

  video = Video.new youtube_url: Faker::Internet.url,
                        title: Faker::Zelda.game

  parent_video = Video.new youtube_url: Faker::Internet.url,
                               title: Faker::Zelda.game

  child_video = Video.new youtube_url: Faker::Internet.url,
                              title: Faker::Zelda.game

  mike.dances << dance
  puts "added dance #{dance.title} to Mike"
  dance.videos << video
  puts "added video #{video.title} to dance #{dance.title}"
  video.parents << parent_video
  puts "added parent #{parent_video.title} to dance #{dance.title}"
  video.children << child_video
  puts "added child #{child_video} to dance #{dance.title}"
  video.save!
  parent_video.save!
  child_video.save!

  puts "end db seed"
end
