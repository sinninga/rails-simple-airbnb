# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Cabin in the Woods',
    address: 'Colorado',
    description: 'Perfect location for a ski holiday in the Rockies',
    price_per_night: 255,
    number_of_guests: 2
  },
  {
    name: 'Mansion',
    address: 'Hamptons',
    description: 'If you cannot impress your friends here, just give up',
    price_per_night: 5000,
    number_of_guests: 45
  },
  {
    name: 'Winnebago',
    address: 'West Virginia',
    description: 'Ideal hideout for all your shady operations',
    price_per_night: 25,
    number_of_guests: 1
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
