require 'faker'
require 'open-uri'

puts 'Deleting all gardens'
Garden.delete_all
puts 'Creating fake gardens'

garden = Garden.new(
  name: 'Marquês de Pombal',
  country: 'Portugal',
  description: 'Spacious garden dominated by a large pine tree that offers its shadow to our visitors.',
  price_per_month: 100,
  user_id: 1
)
file = URI.open('https://images.pexels.com/photos/1084540/pexels-photo-1084540.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!



garden = Garden.new(
  name: 'Arroios',
  country: 'Portugal',
  description: 'Lush and tropical garden in the middle of the city!',
  price_per_month: 80,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1584479898061-15742e14f50d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!


garden = Garden.new(
  name: 'Estrela',
  country: 'Portugal',
  description: 'A jungle in the heart of the city.',
  price_per_month: 90,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1518568403628-df55701ade9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

garden = Garden.new(
  name: 'Oriente',
  country: 'Portugal',
  description: 'Large garden in the modern area of Lisbon!',
  price_per_month: 100,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

garden = Garden.new(
  name: 'Campo de Ourique',
  country: 'Portugal',
  description: 'Spacious garden dominated by a large pine tree that offers its shadow to our visitors.',
  price_per_month: 120,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1523348837708-15d4a09cfac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

garden = Garden.new(
  name: 'Campolide',
  country: 'Portugal',
  description: 'Our garden is an enchanted garden.',
  price_per_month: 110,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1589821821018-05d61218251f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1491&q=80')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

garden = Garden.new(
  name: 'Avenidas Novas',
  country: 'Portugal',
  description: 'When the morning comes, the sun will once again peep through the clouds and inject life into the winter-stunned garden. It becomes lush and bountiful for another year, an oasis for life in a shrinking world.',
  price_per_month: 75,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1507484467459-0c01be16726e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

garden = Garden.new(
  name: 'Chiado',
  country: 'Portugal',
  description: 'There is a baked-apple smell in the air. It is the smell of plants growing.',
  price_per_month: 100,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1562592306-54967af3926d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

garden = Garden.new(
  name: 'Penha de França',
  country: 'Portugal',
  description: 'Even in the hottest summer days the shadow of the tree keeps the place cool. At the back yard there is a barbeque where you may grill fish or meat.',
  price_per_month: 130,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1508094427028-b1e27931dddb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

garden = Garden.new(
  name: 'Alcantara',
  country: 'Portugal',
  description: 'The garden is watered by a small private well. That way we help to preserve the precious water resources of Sithonia.',
  price_per_month: 80,
  user_id: 1
)
file = URI.open('https://images.unsplash.com/photo-1601001816339-74036796370c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60')
garden.photo.attach(io: file, filename: 'test.png', content_type: 'image/jpeg')
garden.save!

puts 'Done!!'
