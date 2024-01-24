# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# puts "Creating restaurants..."

Restaurant.destroy_all

restaurants = [
  { name: 'Pink Door', phone_number: 937, address: 'Seattle, WA', category: 'japanese' },

  { name: 'Luca', phone_number: 933, address: 'London, United Kingdom', category: 'italian' },

  { name: 'Pujol', phone_number: 492, address: 'Ciudad de México, CDMX, Mexico', category: 'chinese' },

  { name: 'Tapas Molecular Bar', phone_number: 288, address: 'Tokyo, Japan', category: 'belgian' },

  { name: 'Aigle Noir', phone_number: 8163, address: 'Montreal, Quebec', category: 'french' }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
