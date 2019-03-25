# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "MC", last_name: "Simoes", username: "mc118dogs", password: "ilovedogs")
User.create(first_name: "Linya", last_name: "Hu", username: "linya.hu", password: "ilovedogs")
User.create(first_name: "Emily", last_name: "Seieroe", username: "emily", password: "ilovedogs")

### Categories: [top, bottom, outerwear, dress, shoes, accessories, handbag]

# Item.create(
#   description: "black sweater",
#   category: "top",
#   subcategory: "sweater",
#   color: "black",
#   season: "winter",
#   occasion: "casual",
#   keywords: "sweater, light, v-neck",
#   brand: "",
#   photo: "",
#   user_id: 1
# )
#
# Item.create(
#   description: "olive green corduroy pants",
#   category: "bottom",
#   subcategory: "pants",
#   color: "green",
#   season: "winter",
#   occasion: "casual",
#   keywords: "olive green, flare",
#   brand: "Lucky Brand",
#   photo: "",
#   user_id: 1
# )

# i = Item.new(user_idname: "emilysitem")
#


# create_table "items", force: :cascade do |t|
#   t.string "description"
#   t.string "category"
#   t.string "subcategory"
#   t.string "color"
#   t.string "season"
#   t.string "occasion"
#   t.string "keywords"
#   t.string "brand"
#   t.string "image"
#   t.integer "user_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
