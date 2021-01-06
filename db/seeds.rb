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



#hikers
mai = Hiker.create(name: "Mai", username:"mp12", password:"abc123", experience:"advanced", profile_pic_url: "https://ibb.co/sVKXDTb")

#trails
Trail.create(name: "Watkin's Glen State Park", location: "New York", difficulty: "Moderate",
    attraction: "Cascading Waterfalls",
    img_url: "https://lh4.googleusercontent.com/proxy/g-nzYI3e3tRMqcW9W-VlmqYLH4haUyKvOmtjjKWO_cjtYnexdKGvxEmwIr-jnfESdzmB7OJoYeEu84mSxs_ul3ac_-qjIUxVHmp46b4UxRg45e8gmUhZypnxkcHSI9fl4_E_jgQK8gWHo6nZM0LSjzz9nJ30AmpziutlHqWuxoCP=w592-h404-n-k-no")
Trail.create(name: "Bear Mountain", location: "New York", difficulty: "Hard",
    attraction: "City Skyline View",
    img_url: "https://t0.gstatic.com/images?q=tbn:ANd9GcTUEeVrFqR80BrPjz6n_Tw4lvuSbRZMsM5EiPnoEBDeapuFRWFx2C7N8IEd5jQ9VfFd9AXJfarAcebIP_luTm8Vew")
Trail.create(name: "Mount Tammany", location: "Knowlton, New Jersey", difficulty: "Moderate",
    attraction: "Overlooking View",
    img_url: "https://t1.gstatic.com/images?q=tbn:ANd9GcQouM1ZPIDwBOsuOE3QgAvLBS8KkvuxKhqc9TZVQfeZQclhyTGtBsvyl6zJlVKW9M62wbfhNf_pg74MbAD5IHX_tQ" )
Trail.create(name: "Dingman's Falls", location: "Delaware, Pennsylvannia", difficulty: "Moderate",
    attraction: "Waterfalls, Camp ground",
    img_url: "https://t3.gstatic.com/images?q=tbn:ANd9GcSKRs45Yqo1NLs_-gM-4e_60rxQJlp0h1gP4uF5ELbKzXGxnYLlo31gwG8l8tlRyGU1osHLctQ3ErpKpYnulNOjkg")
Trail.create(name: "Griffith Park Trail", location: "Los Angeles, California", difficulty: "Moderate",
    attraction: "Griffith Park Trail is a 8.7 mile heavily trafficked loop trail located near Los Angeles, California that features beautiful wild flowers" ,
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/22015517/extra_large_8ce886b674740b7e0426c87fc1566555.jpg")
Trail.create(name: "Devil's Bridge Trail ", location: "Sedona, Arizona", difficulty: "Moderate",
    attraction: "Devils Bridge is the largest natural sandstone arch located in the Sedona area of the Coconino National Forest. This is a very popular hike that offers breathtaking views of Red Rock country.",
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/11306298/extra_large_3db289ecb34d6f2cf298164026d47b99.jpg")
Trail.create(name: "Snow Lake Trail", location: "Snoqualmie, Washington", difficulty: "Moderate",
    attraction: "A beautiful hike past numerous waterfalls, with an ending at a gorgeous alpine lake. The first 2 miles are direct, and the final has rock blasted switchbacks to the top of the ridge.",
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/21325927/extra_large_dfe0994da3124c0bb7c2f14ff30dae64.jpg")
Trail.create(name: "Moraine Lake Shoreline Trail" , location: "Alberta, Canada", difficulty: "Easy",
    attraction: "The hike around the Moraine Lake shoreline is the easiest way to appreciate the beauty of this famous alpine lake. A flat, easy trail weaves its way through shoreline trees and offers extraordinary views of the Ten Peaks, a dramatic row of summits all over 10,000 feet. Hike up the Rockpile for an alternative view of these indigo waters and the nearby Tower of Babel.",
    img_url: "https://www.banfflakelouise.com/sites/default/files/styles/m_960_natural/public/moraine-lake-photographer-banff-alberta_0.jpeg?itok=ZrovrD8c")
Trail.create(name: "Grand Prismatic Hot Spring" , location: "Yellowstone, Wyoming", difficulty: "Easy",
    attraction: "Grand Prismatic Hot Spring is a 1.6 mile heavily trafficked out and back trail located near Yellowstone National Park, Wyoming that features hot springs and is good for all skill levels.",
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/30566889/extra_large_6e573376b3f2a0b6ee95de5ac092483e.jpg")
Trail.create(name: "Ocean Path & Gorham Mountain Trail"  , location: " Bar Harbor, Maine", difficulty: "Hard",
    attraction: "A wonderful loop hike that will take you along the shore of the Atlantic, over mountain ledges to end at Sand Beach. This hike that will take you along the shore of Newport Cove past powerful Thunderhole and then up over the open ledges of Gorham Mountain.",
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/18212692/extra_large_2d953cba5e8e6c15fb7518e34ceed9de.jpg")

#favorites
favorite1 = Favorite.create(rating: 1, hiker_id: mai.id, trail_id: Trail.all.sample.id)
review1 = Review.create(text: "beautiful, green trees and fresh water...lots of sunshine", hiker_id: mai.id, trail_id: Trail.all.sample.id)

puts "Data Seeded!"