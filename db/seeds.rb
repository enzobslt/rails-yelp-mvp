# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french', phone_number: '06 19 13 80 50'}
fx = { name: 'fx', address: 'place viarme 44000 Nantes', category: 'japanese', phone_number: '06 16 64 80 50' }
thibo = { name: 'thibo', address: 'la bonne crepouille', category: 'french', phone_number: '06 19 13 80 51' }
kevin = { name: 'kevin', address: 'plat boudiste 4 rue de la hess', category: 'chinese', phone_number: '06 69 69 69 69' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'belgian', phone_number: '06 30 36 36 30'}

[dishoom, fx, thibo, kevin, pizza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
