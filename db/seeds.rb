# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.destroy_all
User.destroy_all

# user1
User.create!(
  email: 'user1@example.com',
  password: 'password123',
  host: true
)

# user2
ahmed = User.create!(
  email: 'Ahmed@example.com',
  password: 'password123',
  host: true
)

# user3
alexandra = User.create!(
  email: 'Alexandra@example.com',
  password: 'password123',
  host: true
)

# user4
nicolas = User.create!(
  email: 'Nicola@example.com',
  password: 'password123',
  host: true
)

# product1
Product.create!(
  name: "Discreet Landscapes",
  category: "Music",
  price: 15.50,
  description: "Discreet Landscapes is a collection of digitally created artworks exploring the natural world through an imagined and utopic lens",
  availability: true,
  image: "01.png",
  user_id: nicolas.id
)

# product2
Product.create!(
  name: "Skyborne - Genesis",
  category: "Photography",
  price: 35.50,
  description: "Each Genesis Immortal comes equipped with powerful traits, enhancing their abilities and making them valuable assets in the world of Skyborne Legacy.",
  availability: true,
  image: "02.png",
  user_id: ahmed.id
)

# product3
Product.create!(
  name: "Zero Gravity",
  category: "Gaming",
  price: 65.50,
  description: "In the weightless environment of space, a unique form of sculpture art emerges, using paint as a medium to create sculptures",
  availability: true,
  image: "03.png",
  user_id: alexandra.id
)

# product4
Product.create!(
  name: "Super Champs",
  category: "Art",
  price: 65.50,
  description: "Something which has more than one possible meaning and therefore possibly causes confusion",
  availability: true,
  image: "04.png",
  user_id: alexandra.id
)
