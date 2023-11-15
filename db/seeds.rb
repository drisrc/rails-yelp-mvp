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
giorgia = {name: "Giorgia Trattoria", address: "Weißenburger Str. 2, 81667 München", phone_number: "089 594393", category: "italian"}
eataly = {name: "Eataly", address: "Blumenstraße 4, 80331 München", phone_number: "089 21994870", category: "italian"}
yuki_hana = {name: "Yuki Hana", address: "Stollbergstraße 6, 80539 München", phone_number: "089 21269018", category: "japanese"}
mai_garten = {name: "Mai Garten", address: "Ohlmüllerstraße 24, 81541 München", phone_number: "089 62423888", category: "chinese"}
le_faubourg = {name: "Le Faubourg", address: "Kirchenstraße 5, 81675 München", phone_number: "089 475533", category: "french"}

[giorgia, eataly, yuki_hana, mai_garten, le_faubourg].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
