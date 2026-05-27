# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  {
    name: "Epicure",
    address: "75008 Paris",
    phone_number: "01 42 65 05 61",
    category: "french"
  },
  {
    name: "Sushi Zen",
    address: "Tokyo Center",
    phone_number: "03 1234 5678",
    category: "japanese"
  },
  {
    name: "Pasta Mia",
    address: "Rome Street 12",
    phone_number: "06 9876 5432",
    category: "italian"
  },
  {
    name: "Wok Palace",
    address: "Shanghai Road 88",
    phone_number: "021 5566 7788",
    category: "chinese"
  },
  {
    name: "Belgian House",
    address: "Brussels Grand Place",
    phone_number: "02 123 4567",
    category: "belgian"
  }
]

restaurants.each do |attrs|
  Restaurant.create!(attrs)
end

puts "Finished!"
