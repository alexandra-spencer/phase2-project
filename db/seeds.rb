# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Favorite.destroy_all
Review.destroy_all
Hiker.destroy_all
Trail.destroy_all

mai = Hiker.create(name: "Mai", username:"mp12", password:"abc123", experience:"advanced")
trail1 = Trail.create(name: "Everest", location: "New York", difficulty: "hard", attraction: "bluebirds")
favorite1 = Favorite.create(rating: 1, hiker_id: mai.id, trail_id: trail1.id)
review1 = Review.create(text: "beautiful, green trees and fresh water...lots of sunshine", hiker_id: mai.id, trail_id: trail1.id)
trail2 = Trail.create(name: "Green Valley", location: "New York", difficulty: "easy", attraction: "waterfall")