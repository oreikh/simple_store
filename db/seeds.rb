# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
Product.delete_all

676.times do
  Product.create(
    title:          Faker::Commerce.product_name,
    price:          Faker::Commerce.price(range: 10.0..1000.0, as_string: false),
    stock_quantity: Faker::Number.between(from: 1, to: 1000)
  )
end

puts "676 fake products have been created."
