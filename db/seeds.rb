require "open-uri"

puts "Cleaning the bookings table"
Booking.destroy_all
puts "Cleaning the outfits table"
Outfit.destroy_all
puts "Cleaning the users table"
User.destroy_all

# Seed Users

puts "Generating 3 users"
User.create(email: "mary@exemple.com", first_name: "Mary", last_name: "Jane", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463153/panda_avatar.png")
User.create(email: "john@exemple.com", first_name: "John", last_name: "Smith", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463149/fox_avatar.png")
User.create(email: "johanna@exemple.com", first_name: "Johanna", last_name: "Lafont", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463145/chick_avatar.png")
puts "All done"

# Seed outfits

puts "Generating outfits"
description = "Here is an outfit for your dog to be the cutest"
christmas = Outfit.new(title: "Christmas outfit for dogs", size: "S", occasion: "Christmas", description: description, animal: "Dog", price_per_day: 100)
christmas.user = User.last
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685472015/dog_christmas.jpg")
christmas.photos.attach(io: file, filename: "dog_christmas.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685472015/dog_christmas2.jpg")
christmas.photos.attach(io: file, filename: "dog_christmas2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685472014/dog_christmas3.jpg")
christmas.photos.attach(io: file, filename: "dog_christmas3.jpg")
christmas.save!

puts "all done"

# Seed bookings
puts "Generating bookings"

booking = Booking.new(
  status: "pending",
  start_date: "2023-12-23",
  end_date: "2023-12-23",
  user_id: User.last.id,
  outfit_id: Outfit.last.id
)
booking.save!

puts "all done!"
