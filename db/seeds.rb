# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

dishoom = {name: "Dishoom", address: "100 clapham high street", phone_number: 7890337430, category: "italian"}
pizza_hut = {name: "Pizza Hut", address: "99 Wandsworth, London", phone_number: 172837430, category: "chinese"}
franco_manco = {name: "Franco Manco", address: "19 Broadgate street, London", phone_number: 1563333430, category: "japanese"}
mc_donalds = {name: "Mc Donalds", address: "1 Mafair PLace", phone_number: 22233174330, category: "belgian"}
cafe_fleur = {name: "Cafe Fleur", address: "Wandsowrth Town, clapham high street", phone_number: 1411327430, category: "french"}

[dishoom, pizza_hut, franco_manco, mc_donalds, cafe_fleur].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished seeding..."