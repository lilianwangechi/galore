# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '🌱 Seeding plants...'
20.times do 
Plant.create!(
  name: Faker::Name.name,
  image_url: Faker::Avatar.image,
  price: Faker::Commerce.price
)
end



20.times do 
  User.create!(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  end

  puts 'Seeding Reviews..'
50.times do 
  Review.create(
    comment: Faker::Lorem.sentence,
    rating: rand(3..5),
    user_id: rand(1..User.all.size),
    plant_id: rand(1..Plant.all.size),
  )
end

puts '✅ Done seeding!'

# Plant.create!([
#   {
#     name: 'Aloe',
#     image_url: './images/aloe.jpg',
#     price: 15.99
#   },
#   {
#     name: 'ZZ Plant',
#     image_url: './images/zz-plant.jpg',
#     price: 25.98
#   },
#   {
#     name: 'Pilea peperomioides',
#     image_url: './images/pilea.jpg',
#     price: 5.99
#   },
#   {
#     name: 'Pothos',
#     image_url: './images/pothos.jpg',
#     price: 12.11
#   },
#   {
#     name: 'Jade',
#     image_url: './images/jade.jpg',
#     price: 10.37
#   },
#   {
#     name: 'Monstera Deliciosa',
#     image_url: './images/monstera.jpg',
#     price: 25.99
#   },
#   {
#     name: 'Fiddle Leaf Fig',
#     image_url: './images/fiddle-leaf-fig.jpg',
#     price: 55
#   }
#   {
#     name: 'zebra',
#     image_url: './images/product3.png,
#     price: 18.37
#   },
#   {
#     name: 'Monstera Deliciosa',
#     image_url: './images/monstera.jpg',
#     price: 25.99
#   },
#   {
#     name: 'Succulent',
#     image_url: './images/product4.png',
#     price: 55
#   }
# ])
