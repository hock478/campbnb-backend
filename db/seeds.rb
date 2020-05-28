# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Property.destroy_all
Reservation.destroy_all
Review.destroy_all
Community.destroy_all
Message.destroy_all

user1 = User.create(username: 'richardbobo' , fullname: 'Richard Bobo' , bio: 'Trying to travel the world on a dime.' , image_url: 'https://semantic-ui.com/images/avatar2/large/matthew.png', password_digest: BCrypt::Password.create('password'))
user2 = User.create(username: 'uzo4000' , fullname: 'Uzo' , bio: 'There better be beds at these camp sites.' , image_url: 'https://semantic-ui.com/images/avatar2/large/matthew.png', password_digest:  BCrypt::Password.create('password'))
user3 = User.create(username: 'dawitdawit' , fullname: 'Dawit' , bio: 'Thinking about traveling when I can.' , image_url: 'https://semantic-ui.com/images/avatar2/large/matthew.png', password_digest: BCrypt::Password.create('password'))
user4 = User.create(username: 'chine4flatiron' , fullname: 'Chine' , bio: 'I am a programmer. I can afford a hotel. But I still choose to camp.' , image_url: 'https://semantic-ui.com/images/avatar2/large/matthew.png', password_digest:  BCrypt::Password.create('password'))
user5 = User.create(username: 'babycakes2000' , fullname: 'Johnny Cash' , bio: 'Love to travel. Hate to waste money.' , image_url: 'https://semantic-ui.com/images/avatar2/large/matthew.png', password_digest:  BCrypt::Password.create('password'))

property1 = Property.create(owner_id: user1.id, name: 'Camp Far North', city: 'Middle of Nowhere', state: 'Montana', details: 'You are on your own with this camp site', img_url: "https://tahoesup.com/wp-content/uploads/2019/03/photo-ts-camp-far-west-reservoir-gallery-image-2-1000x600.jpg" , price_per_night: 100)
property2 = Property.create(owner_id: user2.id, name: 'Tiny House Camp', city: 'Salt Lake City', state: 'Utah', details: 'Beautiful national parks. Onsite showers.', img_url: "https://res.cloudinary.com/tinyhouselistings/image/upload/f_auto,q_auto:eco/e_trim/c_fill,h_592,w_896/IMG_5783_a1a2sl" , price_per_night: 80)
property3 = Property.create(owner_id: user3.id, name: 'Lake Tahoe South', city: 'Lake Tahoe', state: 'California', details: 'Beautiful views of the lake, and casinos near by.', img_url: "https://cdn.abcotvs.com/dip/images/5392681_071219-kgo-tahoe-nears-legal-limit-img_Image_21-21-05,02.jpg?w=800&r=16%3A9" , price_per_night: 150)
property4 = Property.create(owner_id: user2.id, name: 'Deep Creek Camping', city: 'Deep Creek', state: 'Maryland', details: 'Just a few hour drive from DC and Baltimore.', img_url: "https://www.deepcreekcamping.com/images/Slides-camp-home/Tents-creek-3.jpg", price_per_night: 75 )
property5 = Property.create(owner_id: user3.id, name: 'Beach Camp Grounds', city: 'Ocean City', state: 'Maryland', details: 'Camping in the sand dunes and an ocean beeze. ', img_url: "https://thervatlas.com/wp-content/uploads/2018/10/42730969_1742563885866664_3420015048293089280_o-1080x675.jpg", price_per_night: 55)
property6 = Property.create(owner_id: user3.id, name: 'Ocean Breeze Camp Grounds', city: 'Near San Diego', state: 'California', details: 'Camping in the sand dunes and an ocean beeze. You will not get closer to the beach than this. ', img_url: "https://www.gore-tex.com/sites/default/files/blog_images/beach-camping.jpg", price_per_night: 98 )
property7 = Property.create(owner_id: user2.id, name: 'Grand Canyon Camping', city: 'South Rim', state: 'Arizona', details: 'Camping in the sand dunes and an ocean beeze. You will not get closer to the beach than this. ', img_url: "https://www.oars.com/wp-content/uploads/2011/06/GrandCanyonHiker2014-208_sm-1024x684.jpg", price_per_night: 98 )



reservation1 = Reservation.create(user_id: user2.id, property_id: property1.id ,start_date: "05-21-20", end_date: "05-27-20")
reservation2 = Reservation.create(user_id: user1.id, property_id: property2.id ,start_date: "05-23-20", end_date: "05-28-20")
reservation3 = Reservation.create(user_id: user4.id, property_id: property3.id ,start_date: "05-22-20", end_date: "05-26-20")
reservation6 = Reservation.create(user_id: user5.id, property_id: property3.id ,start_date: "06-20-20", end_date: "06-26-20")
reservation4 = Reservation.create(user_id: user3.id, property_id: property1.id ,start_date: "05-25-20", end_date: "05-29-20")
reservation5 = Reservation.create(user_id: user5.id, property_id: property2.id ,start_date: "05-30-20", end_date: "06-05-20")

reservation7 = Reservation.create(user_id: user1.id, property_id: property4.id ,start_date: "05-30-20", end_date: "06-05-20")
reservation8 = Reservation.create(user_id: user1.id, property_id: property5.id ,start_date: "05-30-20", end_date: "06-05-20")
reservation9 = Reservation.create(user_id: user1.id, property_id: property6.id ,start_date: "05-30-20", end_date: "06-05-20")
reservation10 = Reservation.create(user_id: user1.id, property_id: property7.id ,start_date: "05-30-20", end_date: "06-05-20")
reservation11 = Reservation.create(user_id: user2.id, property_id: property6.id ,start_date: "05-30-20", end_date: "06-05-20")



review1 = Review.create(user_id: user2.id, reservation_id: reservation1.id, rating: 4, content: 'Nice stay but could have been better')
review2 = Review.create(user_id: user1.id, reservation_id: reservation2.id, rating: 5, content: 'loved it!')
review3 = Review.create(user_id: user4.id, reservation_id: reservation3.id, rating: 2, content: 'Had a great view!')
review4 = Review.create(user_id: user5.id, reservation_id: reservation6.id, rating: 5, content: 'Had a cool view!')

review5 = Review.create(user_id: user1.id, reservation_id: reservation9.id, rating: 3, content: 'Not my favorite, but it was nice.')
review6 = Review.create(user_id: user2.id, reservation_id: reservation11.id, rating: 5, content: 'Crowded. But i loved it. Beautiful views. worth going to!')




community1 = Community.create(user_id: user2.id, topic: "First Time Users")
community2 = Community.create(user_id: user3.id, topic: "New Mexico Travelers")
community3 = Community.create(user_id: user1.id, topic: "Camping Hacks & DIY")
community4 = Community.create(user_id: user1.id, topic: "Grand CanyonHikes & Camping")
message1 = Message.create(user_id: user1.id, community_id: community1.id, content: "Hey everyone")
message2 = Message.create(user_id: user3.id, community_id: community1.id , content: "Hey peoples")