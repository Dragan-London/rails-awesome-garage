# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database"

Favourite.destroy_all
Car.destroy_all
Owner.destroy_all


puts "Creating Owners"

ife = Owner.create!(nickname: "Ife500")
deji = Owner.create!(nickname: "DejiGasGas")
claire = Owner.create!(nickname: "WonderClaire")
ben = Owner.create!(nickname: "BenMcClaren")

puts "Creating cars"

Car.create!(brand: "Ferrari", model: "Testarossa", year: 1995, fuel: "Unleaded petrol", owner: ife,
  image_url: "https://images.unsplash.com/photo-1647797907105-9298e001f821?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8RmVycmFyaSUyMFRlc3Rhcm9zc2F8ZW58MHx8MHx8fDA%3D")
Car.create!(brand: "Mercedes", model: "Roadster", year: 1987, fuel: "Diesel", owner: deji,
image_url: "https://images.unsplash.com/photo-1629055666341-5e505c77d49b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8TWVyY2VkZXMlMjBSb2Fkc3RlcnxlbnwwfHwwfHx8MA%3D%3D")
Car.create!(brand: "Aston Martin", model: "DB5", year: 1965, fuel: "Unleaded petrol", owner: claire,
image_url: "https://images.unsplash.com/photo-1642201855395-1c8b44e6e42b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fEFzdG9uJTIwTWFydGluJTIwREI1fGVufDB8fDB8fHww")
Car.create!(brand: "McLaren", model: "7205", year: 2024, fuel: "Unleaded petrol", owner: ben,
 image_url: "https://images.unsplash.com/photo-1615394695852-da39a8df9bf1?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fE1jTGFyZW58ZW58MHx8MHx8fDA%3D")

puts "Done! #{Owner.count} owners and #{Car.count} cars created."
