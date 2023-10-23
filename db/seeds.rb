# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "csv"

Product.destroy_all
Category.destroy_all

# 676.times do
#   Product.create(
#     title:          Faker::Commerce.product_name,
#     price:          Faker::Commerce.price(range: 10.0..1000.0, as_string: false),
#     stock_quantity: Faker::Number.between(from: 1, to: 1000)
#   )
# end

csv_file = Rails.root.join("db/products.csv")
csv_data = File.read(csv_file)
products = CSV.parse(csv_data, headers: true)

products.each do |product|
  title = product["name"]
  description = product["description"]
  price = product["price"]
  stock_quantity = product["stock quantity"]
  category_name = product["category"]
  category = Category.find_or_create_by(name: category_name)

  # Create the product
  Product.create!(
    title:,
    description:,
    price:,
    stock_quantity:,
    category: # Associate the product with the category
  )
end
