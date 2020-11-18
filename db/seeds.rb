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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0789654316", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0678904512", category: "italian" }
maire =  { name: "El Gab", address: "Lyon zoo", phone_number: "0678904512", category: "belgian" }
marmaris =  { name: "Marmaris", address: "56A Rue du General De Gaulle, Mouvaux", phone_number: "0678664519", category: "french" }
friterie =  { name: "Friteland", address: "28 quai de la graisse, Berck", phone_number: "0678876623", category: "italian" }

[ dishoom, pizza_east, maire, marmaris, friterie ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
