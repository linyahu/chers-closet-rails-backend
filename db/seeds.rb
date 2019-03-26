# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


##############################################
#           Seed data for Users
##############################################

User.create(first_name: "MC", last_name: "Simoes", username: "mc118dogs", password: "ilovedogs")
User.create(first_name: "Linya", last_name: "Hu", username: "linya.hu", password: "ilovedogs")
User.create(first_name: "Emily", last_name: "Seieroe", username: "emily", password: "ilovedogs")

##############################################
#           Seed data for Outfits
##############################################

Outfit.create(
  description: "school outfit 1",
  season: "spring",
  category: "",
  occasion: "",
  user_id: 1
)

Outfit.create(
  description: "school outfit 2",
  season: "spring",
  category: "",
  occasion: "",
  user_id: 1
)
