# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chinatown = { name: "Chinatown", address: "London", phone_number: "01111111", category: "chinese" }
pastaland = { name: "Pastaland", address: "London", phone_number: "02222222", category: "italian" }
sushiland = { name: "Sushiland", address: "London", phone_number: "03333333", category: "japanese" }
franceland = { name: "Franceland", address: "Manchester", phone_number: "04444444", category: "french" }
belgiumland = { name: "Belgiumland", address: "Liverpool", phone_number: "05555555", category: "belgian" }

[ chinatown, pastaland, sushiland, franceland, belgiumland ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

