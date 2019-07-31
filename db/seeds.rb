# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '12345',
    category:     'belgian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '1234567890',
    category:     'italian'

  },
  {
    name:         'Sika',
    address:      'Canggu',
    phone_number: '123',
    category:     'japanese'

  },
  {
    name:         'Fabbrica',
    address:      'Canggu',
    phone_number: '1095857',
    category:     'italian'
  },
  {
    name:         'Shady Shake',
    address:      'Canggu',
    phone_number: '1234890',
    category:     'chinese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
