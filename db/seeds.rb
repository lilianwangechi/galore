# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '🌱 Seeding plants...'

Plant.create!(
  name: Faker::Name.name,
  image_url: Faker::Avatar.image,
  price: Faker::Commerce.price
)


20.times do 
  User.create!(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  end

puts '✅ Done seeding!'
