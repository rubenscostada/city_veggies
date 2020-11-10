# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Deleting all gardens'
Garden.delete_all
puts 'Creating fake gardens'
50.times do
  garden = Garden.new(
    name: Faker::Restaurant.name,
    country: Faker::Address.country,
    description: Faker::Restaurant.description,
    price_per_month: rand(50..300),
    user_id: 1
  )
  garden.save!
end
puts 'Done!!'
