# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# puts 'Deleting all gardens'
Garden.delete_all
# puts 'Creating fake gardens'
# 50.times do
#   garden = Garden.new(
#     name: Faker::Restaurant.name,
#     country: Faker::Address.country,
#     description: Faker::Restaurant.description,
#     price_per_month: rand(50..300),
#     user_id: 1
#   )
#   garden.save!
# end
# puts 'Done!!'

      garden = Garden.new(
      name: 'Marquês de Pombal',
      country: 'Portugal',
      description: 'Spacious garden dominated by a large pine tree that offers its shadow to our visitors.',
      price_per_month: 100,
      user_id: 1
      )
      garden.save!

garden = Garden.new(
      name: 'Arroios',
      country: 'Portugal',
      description: 'Lush and tropical garden in the middle of the city!',
      price_per_month: 80,
      user_id: 1
    )
    garden.save!

      garden = Garden.new(
      name: 'Estrela',
      country: 'Portugal',
      description: 'A jungle in the heart of the city.',
      price_per_month: 90,
      user_id: 1
    )
    garden.save!

    garden = Garden.new(
      name: 'Oriente',
      country: 'Portugal',
      description: 'Large garden in the modern area of Lisbon!',
      price_per_month: 100,
      user_id: 1
     )
     garden.save!

    garden = Garden.new(
      name: 'Campo de Ourique',
      country: 'Portugal',
      description: 'Spacious garden dominated by a large pine tree that offers its shadow to our visitors.',
      price_per_month: 120,
      user_id: 1
     )
     garden.save!


    garden = Garden.new(
      name: 'Campolide',
      country: 'Portugal',
      description: 'Our garden is an enchanted garden.',
      price_per_month: 110,
      user_id: 1
     )
     garden.save!


    garden = Garden.new(
      name: 'Avenidas Novas',
      country: 'Portugal',
      description: 'When the morning comes, the sun will once again peep through the clouds and inject life into the winter-stunned garden. It becomes lush and bountiful for another year, an oasis for life in a shrinking world.',
      price_per_month: 75,
      user_id: 1
     )
     garden.save!


    garden = Garden.new(
      name: 'Chiado',
      country: 'Portugal',
      description: 'There is a baked-apple smell in the air. It is the smell of plants growing.',
      price_per_month: 100,
      user_id: 1
     )
     garden.save!


    garden = Garden.new(
      name: 'Penha de França',
      country: 'Portugal',
      description: 'Even in the hottest summer days the shadow of the tree keeps the place cool. At the back yard there is a barbeque where you may grill fish or meat.',
      price_per_month: 130,
      user_id: 1
     )
     garden.save!


    garden = Garden.new(
      name: 'Alcantara',
      country: 'Portugal',
      description: 'The garden is watered by a small private well. That way we help to preserve the precious water resources of Sithonia.',
      price_per_month: 80,
      user_id: 1
     )
     garden.save!
