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

  dance = Dance.new title: Faker::Food.ingredient,
                        description: Faker::Food.measurement

  mike.dances << dance
  dance.save!

  puts "added dance #{dance.title} to Mike"

  video = Video.new youtube_url: Faker::Internet.url,
                    title: Faker::Zelda.game

  mike.videos << video
  dance.videos << video
  video.save!

  puts "added video #{video.title} to dance #{dance.title}"
  puts "this shit saved #{video.title}"

  parent_video = Video.new youtube_url: Faker::Internet.url,
                           title: Faker::Zelda.game

  mike.videos << parent_video
  dance.videos << parent_video
  video.parents << parent_video
  parent_video.save!
  puts "added parent #{parent_video.title} to dance #{dance.title}"

  child_video = Video.new youtube_url: Faker::Internet.url,
                          title: Faker::Zelda.game

  mike.videos << child_video
  dance.videos << child_video
  video.children << child_video
  child_video.save!
  puts "added child #{child_video.title} to dance #{dance.title}"

  puts "end db seed"
end
