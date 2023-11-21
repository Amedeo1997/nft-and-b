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
nicola = User.create!(
  email: 'Nicola@example.com',
  password: 'password123',
  host: true
)

# product1
Product.create!(
  name: "Product 1",
  category: "category",
  price: 15.50,
  description: "Description for Product 1",
  availability: true,
  image: "product_1.jpg",
  user_id: nicola.id
)

# product2
Product.create!(
  name: "Product 2",
  category: "category",
  price: 35.50,
  description: "Description for Product 2",
  availability: true,
  image: "product_2.jpg",
  user_id: ahmed.id
)

# product3
Product.create!(
  name: "Product 3",
  category: "category",
  price: 65.50,
  description: "Description for Product 3",
  availability: true,
  image: "product_3.jpg",
  user_id: alexandra.id
)
