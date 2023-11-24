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
  username: 'user1',
  email: 'user1@example.com',
  password: 'password123',
  host: true
)

# user2
ahmed = User.create!(
  username: 'Amedeo97',
  email: 'Ahmed@example.com',
  password: 'password123',
  host: true
)

# user3
alexandra = User.create!(
  username: 'AustralianGirl',
  email: 'Alexandra@example.com',
  password: 'password123',
  host: true
)

# user4
nicolas = User.create!(
  username: 'Nico1234',
  email: 'Nicola@example.com',
  password: 'password123',
  host: true
)

# product1
Product.create!(
  name: "Discreet Landscapes",
  category: "Movie",
  price: 15.50,
  description: "Discreet Landscapes is a collection of digitally created artworks exploring the natural world through an imagined and utopic lens",
  availability: true,
  image: "01.png",
  user_id: nicolas.id
)

# product2
Product.create!(
  name: "Skyborne - Genesis",
  category: "Entertainment",
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

# product()
Product.create!(
  name: "Discreet Landscapes",
  category: "Movie",
  price: 15.50,
  description: "Discreet Landscapes is a collection of digitally created artworks exploring the natural world through an imagined and utopic lens",
  availability: true,
  image: "05.png",
  user_id: nicolas.id
)

# product6
Product.create!(
  name: "Skyborne - Genesis",
  category: "Entertainment",
  price: 35.50,
  description: "Each Genesis Immortal comes equipped with powerful traits, enhancing their abilities and making them valuable assets in the world of Skyborne Legacy.",
  availability: true,
  image: "06.png",
  user_id: ahmed.id
)

# product7
Product.create!(
  name: "Zero Gravity",
  category: "Gaming",
  price: 65.50,
  description: "In the weightless environment of space, a unique form of sculpture art emerges, using paint as a medium to create sculptures",
  availability: true,
  image: "07.png",
  user_id: alexandra.id
)

# product8
Product.create!(
  name: "Super Champs",
  category: "Art",
  price: 65.50,
  description: "Something which has more than one possible meaning and therefore possibly causes confusion",
  availability: true,
  image: "08.png",
  user_id: alexandra.id
)

Product.create!(
  name: "lorem ipsum",
  category: "Art",
  price: 35.50,
  description: "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  availability: true,
  image: "09.png",
  user_id: alexandra.id
)

Product.create!(
  name: "lorem ipsum",
  category: "Collections",
  price: 35.50,
  description: "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  availability: true,
  image: "10.png",
  user_id: nicolas.id
)

Product.create!(
  name: "lorem ipsum",
  category: "Entertainment",
  price: 35.50,
  description: "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  availability: true,
  image: "11.png",
  user_id: nicolas.id
)
