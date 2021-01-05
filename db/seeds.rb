# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mai = Hiker.create(name: "Mai", username:"mp12", password_digest:"abc123", experience:"advanced")
trail1 = Trail.create(name: "Everest", location: "New York", difficulty: "hard", attraction: "bluebirds")
favorite1 = Favorite.create(rating: 1, hiker_id: 1, trail_id: 1)
review1 = Review.create(text: "beautiful, green trees and fresh water...lots of sunshine", hiker_id: 1, trail_id: 1)