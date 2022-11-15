require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

4.times do
  Flat.create!(
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence,
    price_per_night: rand(75..100),
    number_of_guests: rand(2..8),
    img: "https://source.unsplash.com/random/1000x500/?house"
  )
end
