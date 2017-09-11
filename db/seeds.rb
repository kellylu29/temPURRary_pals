# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(first_name: "Harrison", last_name: "Ford", email: "harry@ford.com", password: "password", avatar: File.new("#{Rails.root}/public/images/users/hford.jpg"))

User.create!(first_name: "George", last_name: "Foreman", email: "george@foreman.com", password: "password", avatar: File.new("#{Rails.root}/public/images/users/gforeman.jpg"))

User.create!(first_name: "Celine", last_name: "Dion", email: "celine@dion.com", password: "password", avatar: File.new("#{Rails.root}/public/images/users/cdion.jpg"))


Pet.create!(user_id: 1, name: "Tom", description: "Furry and cuddly. Likes to eat and play.", city: "Voorhees", state: "NJ", price: 35, avatar: File.new("#{Rails.root}/public/images/cat1.jpg"))

Pet.create!(user_id: 1, name: "Jerry", description: "Afraid of other cats, but loves humans. Mild mannered and friendly.", city: "Philadelphia", state: "PA", price: 45, avatar: File.new("#{Rails.root}/public/images/cat2.jpg"))

Pet.create!(user_id: 1, name: "Furball", description: "Chill and relaxed kitty. Likes to cuddle in blankets. Friendly if you're friendly.", city: "Harrisburg", state: "PA", price: 40, avatar: File.new("#{Rails.root}/public/images/cat3.jpg"))

Pet.create!(user_id: 2, name: "Snowball", description: "Playful cat. Will do anything for treats. Loves hugs.", city: "Cherry Hill", state: "NJ", price: 36, avatar: File.new("#{Rails.root}/public/images/cat4.jpg"))

Pet.create!(user_id: 2, name: "Bob", description: "Friendly with humans, but not other animals. Likes play time, naps, and catnip. ", city: "Fort Lee", state: "NJ", price: 36, avatar: File.new("#{Rails.root}/public/images/cat5.jpg"))

Pet.create!(user_id: 2, name: "Mr. Cat", description: "Good with dogs and other animals. Mostly calm and relaxed. A little fat, but working on it.", city: "New York", state: "NY", price: 36, avatar: File.new("#{Rails.root}/public/images/cat6.jpg"))

Pet.create!(user_id: 3, name: "Frankie", description: "Likes the outdoors and exploring. Very loving and friendly.", city: "Wilmington", state: "DE", price: 36, avatar: File.new("#{Rails.root}/public/images/cat7.jpg"))

Pet.create!(user_id: 3, name: "Bart", description: "Easily bored. Needs a lot of attention and play time. Will do tricks for treats.", city: "Baltimore", state: "MD", price: 36, avatar: File.new("#{Rails.root}/public/images/cat8.jpg"))

Pet.create!(user_id: 3, name: "Coco", description: "Loves people. Very curious and likes to explore.", city: "Philadelphia", state: "PA", price: 36, avatar: File.new("#{Rails.root}/public/images/cat9.jpg"))
