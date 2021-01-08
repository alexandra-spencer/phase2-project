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
mai = Hiker.create(name: "Mai", username:"mtp12", password:"abc123", experience:"Novice", profile_pic_url: "https://ibb.co/sVKXDTb")
alex = Hiker.create(name: "Alex", username:"as95", password:"abc123", experience:"Expert", profile_pic_url: "https://ibb.co/sVKXDTb")
greg = Hiker.create(name: "Greg", username:"gd20", password:"abc123", experience:"Intermediate", profile_pic_url: "https://ibb.co/sVKXDTb")
erwin = Hiker.create(name: "Erwin", username:"ef25", password:"abc123", experience:"Novice", profile_pic_url: "https://ibb.co/sVKXDTb")
jason = Hiker.create(name: "Jason", username:"jz98", password:"abc123", experience:"Expert", profile_pic_url: "https://ibb.co/sVKXDTb")

#trails
Trail.create(name: "Watkin's Glen State Park", location: "Watkins Glen, New York", difficulty: "Moderate",
    attraction: "Watkins Glen State Park is a natural gem. You will certainly enjoy hiking in the Glen gorge along the stream and admiring the 19 waterfalls along its course. You can also opt for a hike on the gorge rim for breathtaking views from above!
    After a hike on a hot summer day, you will probably enjoy swimming in the Olympic-size pool of the park!",
    img_url: "https://gothiceves.com/wp-content/uploads/2019/06/bigstock-Long-Exposure-Photo-Of-The-Wat-277944049.jpg")
Trail.create(name: "Bear Mountain", location: "Fort Montgomery, New York", difficulty: "Hard",
    attraction: "Whether you are looking for a day trip or staying overnight in the Bear Mountain Inn, this park has a variety of activities to offer from hiking, to mountain biking and cross-country ski trails. Popular hiking trails within the park include Anthony's Nose, Bald Mountain, and Major Welch Trail.",
    img_url: "https://t0.gstatic.com/images?q=tbn:ANd9GcTUEeVrFqR80BrPjz6n_Tw4lvuSbRZMsM5EiPnoEBDeapuFRWFx2C7N8IEd5jQ9VfFd9AXJfarAcebIP_luTm8Vew")
Trail.create(name: "Mount Tammany", location: "Knowlton, New Jersey", difficulty: "Moderate",
    attraction: "Great views, challenging ascent, sometimes a little crowded at the summit. The red trail has the challenge of steep uphill portions with the reward of a beautiful outlook at the peak. The way down the blue trail is very pleasant as you see new scenery which includes a winding path through the trees and running water. There is even a small pond.",
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
Trail.create(name: "Upper Yosemite Falls Trail", location: "Yosemite Valley, California" , difficulty: "Hard", 
    attraction: "With over 3.5 million yearly visitors from throughout the world, the iconic Yosemite National Park is known for some of the most beautiful hikes and landscapes in the United States. There are over 800 miles of trails to explore through Yosemite Valley, Tuolumne Meadows, and Wawona. Yosemite has so much to see including the sequoias, the flower filed meadows and valleys left behind from the glaciers, the highest waterfall in the United States, and the spectacular Half Dome and El Capitan." , 
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/32493357/extra_large_f562bf8875947ab3fef37373501024cb.jpg")
Trail.create(name: "Klamath Overlook" , location: "Klamath, California", difficulty: "Easy", 
    attraction: "One of the North Coast’s most spectacular views at 600 feet above the river mouth. Scope Bald Eagle, Osprey, American Kestrel, Common and Pacific Loon, Red-necked and Western Grebe, Surf Scoter, and Black-legged Kittiwake. Common Murre and Pigeon Guillemot are seen in breeding season. Hillside below overlook is alive in spring with Allen’s Hummingbird, Wrentit, and Orange-crowned Warbler. May to June watch for migrating Black Swift among Vaux’s Swift and swallows." , 
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/31806990/extra_large_ea96ae50cc4be45f7ba1c920fe24d2d6.jpg")
Trail.create(name: "Lower Emerald Pool Trail", location: "Springdale, Utah", difficulty: "Easy", 
    attraction: "Lower Emerald Pool Trail is a 1.4 mile heavily trafficked out and back trail that features a waterfall and is good for all skill levels. The trail is primarily used for hiking and is accessible year-round." , 
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/26523099/extra_large_4cc90920a8d3ff92f6f59753d8350044.jpg")
Trail.create(name: "Cascade Mountain" , location: "Keene, New York" , difficulty: "Moderate", 
    attraction: "Cascade Mountain Trail is a popular hiking trail to access Porter Mountain and Cascade Mountain peaks. The trail is exposed and steep with easy rock scrambles along the way. Hikers will be treated to amazing views and a waterfall on their way up. The summit can be crowded during the summer months." , 
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/19228298/extra_large_d7055c66f668409eac1c16e617d8ed17.jpg")
Trail.create(name: "Breakneck Ridge", location: "Cold Spring, New York", difficulty: "Hard" , 
    attraction: "This route is called the 'Breakneck Loop' in the park signage. A popular destination for hikers looking to escape NYC, this short and difficult loop trail heads up Breakneck Ridge and winds down Wilkinson Memorial Trail, passing Sugarloaf Mountain on the descent. The trail includes some steep climbs and rock scrambles over ledges." , 
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/28328241/extra_large_1660bdc72afb5eb90cf194f4fe3c8cf8.jpg" )
Trail.create(name: "Mount Marcy" , location: "Lake Placid, New York", difficulty: "Hard", 
    attraction: "This is a popular route within the Adirondack Mountains is heavily traveled, well maintained, and very well marked, however it can be rough on weak ankles. Hiking boots with good ankle support are recommended.", 
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/20097236/extra_large_d6f1a5b73432c91834b248e15a85205b.jpg" )
Trail.create(name: "Horshoe Bend Trail", location: "Page, Arizona" , difficulty: "Easy", 
    attraction: "Horseshoe Bend Trail is a 1.4 mile heavily trafficked out and back trail that features a river and is good for all skill levels. The trail is primarily used for walking and is accessible year-round. Dogs are also able to use this trail but must be kept on leash.", 
    img_url: "https://cdn-assets.alltrails.com/uploads/photo/image/11719162/extra_large_ee9849c3f8528ddc8de1b918ab6818c9.jpg" )

#favorites
fav1 = Favorite.create(hiker_id: mai.id, trail_id: Trail.all.sample.id)
fav2 = Favorite.create(hiker_id: alex.id, trail_id: Trail.all.sample.id)
fav3 = Favorite.create(hiker_id: greg.id, trail_id: Trail.all.sample.id)
fav4 = Favorite.create(hiker_id: jason.id, trail_id: Trail.all.sample.id)
fav5 = Favorite.create(hiker_id: erwin.id, trail_id: Trail.all.sample.id)
fav6 = Favorite.create(hiker_id: mai.id, trail_id: Trail.all.sample.id)
fav7 = Favorite.create(hiker_id: alex.id, trail_id: Trail.all.sample.id)
fav8 = Favorite.create(hiker_id: greg.id, trail_id: Trail.all.sample.id)
fav9 = Favorite.create(hiker_id: jason.id, trail_id: Trail.all.sample.id)

rev1 = Review.create(text: "beautiful, green trees and fresh water...lots of sunshine", rating: 5, hiker_id: mai.id, trail_id: Trail.all.sample.id)
rev2 = Review.create(text: "gorgeous scenery, saw a couple of wildlife on the trail", rating: 4, hiker_id: alex.id, trail_id: Trail.all.sample.id)
rev2 = Review.create(text: "Hike was hard but got a lot of fresh air. Much needed time away from the noobs in the 1116 cohort", rating: 3, hiker_id: greg.id, trail_id: Trail.all.sample.id)
rev3 = Review.create(text: "I've seen better views. Trail was a cake walk", rating: 2, hiker_id: erwin.id, trail_id: Trail.all.sample.id)
rev4 = Review.create(text: "Turbo and I had a great time on this hike. Pet friendly", rating: 5, hiker_id: jason.id, trail_id: Trail.all.sample.id)
rev5 = Review.create(text: "Mountains were breathtaking. A change from the loud city life", rating: 4, hiker_id: alex.id, trail_id: Trail.all.sample.id)


puts "Data Seeded!"