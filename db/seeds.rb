# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'seeding Restaurants'
Restaurant.destroy_all
10.times do
  resto = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Games::Pokemon.location, category: 'chinese')
  resto.save!
end
puts "you created #{Restaurant.count} restaurants"
