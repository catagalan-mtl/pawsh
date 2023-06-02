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
User.create(email: "isadora@exemple.com", first_name: "Isadora", last_name: "Smith", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463149/fox_avatar.png")
User.create(email: "johanna@exemple.com", first_name: "Johanna", last_name: "Lafont", password: "password", avatar_url: "https://res.cloudinary.com/dbgykplat/image/upload/v1685463145/chick_avatar.png")
puts "All done"

# Seed outfits

puts "Generating outfits"
description = "Here is an outfit for your dog to be the cutest"
christmas = Outfit.new(title: "Christmas outfit for dogs", size: "S", occasion: "Christmas", description: description, animal: "Dog", price_per_day: 123)
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
raincoat = Outfit.new(title: "Fancy raincoat for dogs", size: "L", occasion: "Rainy day", description: description, animal: "Dog", price_per_day: 75)
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
halloween = Outfit.new(title: "Halloween costume for cat", size: "M", occasion: "Halloween", description: description, animal: "Cat", price_per_day: 78)
halloween.user = User.all.sample
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471589/cat_halloween3.jpg")
halloween.photos.attach(io: file, filename: "cat_halloween.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471460/cat_halloween2.jpg")
halloween.photos.attach(io: file, filename: "cat_halloween2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685471460/cat_halloween.jpg")
halloween.photos.attach(io: file, filename: "cat_halloween3.jpg")
halloween.address = "1342 Saint-Denis Montreal"
halloween.save!

puts "halloween outfit for cat"

description = "Want to turn your parrot into a bee for Halloween ?"
halloween = Outfit.new(title: "Bee outfit for parrot", size: "S", occasion: "Halloween", description: description, animal: "Parrot", price_per_day: 81)
halloween.user = User.all.sample
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685718656/Bee_parrot1.webp")
halloween.photos.attach(io: file, filename: "bee_parrot.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685718656/Bee_parrot2.webp")
halloween.photos.attach(io: file, filename: "bee_parrot2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685718656/Bee_parrot3.webp")
halloween.photos.attach(io: file, filename: "bee_parrot3.jpg")
halloween.address = "74 av fairmount 0 Montreal"
halloween.save!

puts "Bee outfit parrot successfully created"

description = "Want to turn your lizard into a frog for Halloween ?"
halloween = Outfit.new(title: "Frog outfit for lizard", size: "S", occasion: "Halloween", description: description, animal: "Lizard", price_per_day: 51)
halloween.user = User.all.sample
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685719087/frog_lizard2.avif")
halloween.photos.attach(io: file, filename: "frog_lizard.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685719087/frog_lizard1.avif")
halloween.photos.attach(io: file, filename: "frog_lizard2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685719087/frog_lizard3.avif")
halloween.photos.attach(io: file, filename: "frog_lizard3.jpg")
halloween.address = "994 rue rachel E Montreal"
halloween.save!

puts "Frog outfit Lizard successfully created"

description = "Your Lizard is fan of Harry Potter ? Here is the most amazing outfit for Halloween !"
halloween = Outfit.new(title: "Wizard outfit for lizard", size: "L", occasion: "Halloween", description: description, animal: "Lizard", price_per_day: 53)
halloween.user = User.all.sample
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685719586/wizard_lizard1.avif")
halloween.photos.attach(io: file, filename: "wizard_lizard.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685719590/wizard_lizard2.avif")
halloween.photos.attach(io: file, filename: "wizard_lizard2.jpg")
file = URI.open("https://res.cloudinary.com/dbgykplat/image/upload/v1685719595/wizard_lizard3.avif")
halloween.photos.attach(io: file, filename: "wizard_lizard3.jpg")
halloween.address = "4185 rue drolet Montreal"
halloween.save!

puts "Wizard outfit Lizard successfully created"

puts "all done"
