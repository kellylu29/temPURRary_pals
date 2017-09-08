# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.create!(user_id: 1, name: "Tom", description: "Furry and cuddly. Likes to eat.", city: "Voorhees", state: "NJ", price: 35, avatar: File.new("#{Rails.root}/public/images/cat1.jpg"))
