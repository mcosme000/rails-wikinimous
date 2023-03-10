# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'We will start by deleting all your articles...'
Article.destroy_all
puts 'Done!'

puts 'Creating 10 new amazing articles...'
10.times do
  Article.create!(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    photo: Faker::LoremFlickr.unique.image
  )
end

puts 'Done!'
