# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

Restaurant.create!([{
  name: 'Shanghai',
  address: 'Paris',
  phone_number: '004354356436',
  category: 'chinese'
},
{
  name: 'Panda',
  address: 'Toulouse',
  phone_number: '0063465363',
  category: 'chinese'
},
{
  name: 'Mamma mia',
  address: 'Rennes',
  phone_number: '004354364363',
  category: 'italian'
},
{
  name: 'Al dente',
  address: 'Bordeaux',
  phone_number: '004542975924',
  category: 'italian'
},
{
  name: 'Sushi Time',
  address: 'Nice',
  phone_number: '00435435636',
  category: 'japanese'
},
{
  name: 'Kimono',
  address: 'Lyon',
  phone_number: '004957493476',
  category: 'japanese'
},
{
  name: 'Oui-Oui',
  address: 'Marseille',
  phone_number: '004643967935608',
  category: 'french'
},
{
  name: 'La vache',
  address: 'Montpellier',
  phone_number: '004953493769385',
  category: 'french'
},
{
  name: 'Les frites',
  address: 'Lille',
  phone_number: '00494839745734',
  category: 'belgian'
},
{
  name: 'The Belgian Waffle Co.',
  address: 'Nantes',
  phone_number: '00974395743957',
  category: 'belgian'
}])

p 'Created #{Restaurant.count} restaurants'

Review.destroy_all

Review.create!([{
  rating: '3',
  content: 'It was okay',
  restaurant: 'Shanghai'
},
{
  rating: '4',
  content: 'Very authentic!',
  restaurant: 'Panda'
},
{
  rating: '2',
  content: 'Not a fan of japanese food',
  restaurant: 'Kimono'
},
{
  rating: '1',
  content: 'The fish was raw!',
  restaurant: 'Sushi Time'
},
{
  rating: 'Al dente',
  content: 'Not sure it was al dente but I liked it.',
  restaurant: '4'
},
{
  rating: 'Mamma mia',
  content: 'I expected to fall in love but the food was a good consolation price',
  restaurant: '5'
},
{
  rating: 'La vache',
  content: 'Did not see a single cow',
  restaurant: '3'
},
{
  rating: 'Oui-oui',
  content: 'The waiters said oui-oui indeed alot.',
  restaurant: '4'
},
{
  rating: 'Les frites',
  content: 'We got fries',
  restaurant: '5'
},
{
  rating: 'The Belgian Waffle Co.',
  content: 'I heard that Belgian waffles are actually French',
  restaurant: '2'
}])

p "Created #{Review.count} reviews"
