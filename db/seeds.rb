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
christmas = Outfit.new(title: "Christmas outfit for dogs", size: "S", occasion: "Christmas", description: description, animal: "Dog", price_cents: 12325)
christmas.user = User.all.sample
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685472015/dog_christmas.jpg")
christmas.photos.attach(io: file, filename: "dog_christmas.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685472015/dog_christmas2.jpg")
christmas.photos.attach(io: file, filename: "dog_christmas2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685472014/dog_christmas3.jpg")
christmas.photos.attach(io: file, filename: "dog_christmas3.jpg")
christmas.address = "5333 Casgrain ave Montreal"
christmas.save!

puts "Christmas successfully created"

description = "Here is an outfit to protect your dog from the rain"
raincoat = Outfit.new(title: "Fancy raincoat for dogs", size: "S", occasion: "Rainy day", description: description, animal: "Dog", price_cents: 7500)
raincoat.user = User.all.sample
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471721/dog_raincoat.jpg")
raincoat.photos.attach(io: file, filename: "dog_raincoat.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471721/dog_raincoat2.jpg")
raincoat.photos.attach(io: file, filename: "dog_raincoat2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471721/dog_raincoat3.jpg")
raincoat.photos.attach(io: file, filename: "dog_raincoat3.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471721/dog_raincoat4.jpg")
raincoat.photos.attach(io: file, filename: "dog_raincoat4.jpg")
raincoat.address = "705 Saint-Catherine Montreal"
raincoat.save!

puts "Raincoat successfully created"

description = "Here is a set of Halloween costumes for your cat"
halloween = Outfit.new(title: "Halloween costume for cat", size: "S", occasion: "Halloween", description: description, animal: "Cat", price_cents: 7825)
halloween.user = User.all.sample
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471589/cat_halloween3.jpg")
halloween.photos.attach(io: file, filename: "cat_halloween.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471460/cat_halloween2.jpg")
halloween.photos.attach(io: file, filename: "cat_halloween2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471460/cat_halloween.jpg")
halloween.photos.attach(io: file, filename: "cat_halloween3.jpg")
halloween.address = "1500 Saint-Catherine Montreal"
halloween.save!

puts "halloween successfully created"

puts "all done"
