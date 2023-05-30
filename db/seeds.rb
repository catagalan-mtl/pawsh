# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed Users
puts "Cleaning the users table"
User.destroy_all
puts "Generating 3 users"
User.create!(email: "mary@exemple.com", first_name: "Mary", last_name: "Jane", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463153/panda_avatar.png")
User.create!(email: "john@exemple.com", first_name: "John", last_name: "Smith", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463149/fox_avatar.png")
User.create!(email: "johanna@exemple.com", first_name: "Johanna", last_name: "Lafont", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463145/chick_avatar.png")
puts "All done"
