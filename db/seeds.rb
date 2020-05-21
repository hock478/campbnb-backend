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
user1 = User.create(username: 'richardbobo' , fullname: 'Richard Bobo' , bio: 'Trying to travel the world on a dime.' , image_url: 'https://f0.pngfuel.com/png/981/645/default-profile-picture-png-clip-art.png')
user2 = User.create(username: 'uzo4000' , fullname: 'Uzo' , bio: 'There better be beds at these camp sites.' , image_url: 'https://f0.pngfuel.com/png/981/645/default-profile-picture-png-clip-art.png')
user3 = User.create(username: 'dawitdawit' , fullname: 'Dawit' , bio: 'Thinking about traveling when I can.' , image_url: 'https://f0.pngfuel.com/png/981/645/default-profile-picture-png-clip-art.png')
user4 = User.create(username: 'chine4flatiron' , fullname: 'Chine' , bio: 'I am a programmer. I can afford a hotel. But I still choose to camp.' , image_url: 'https://f0.pngfuel.com/png/981/645/default-profile-picture-png-clip-art.png')
user5 = User.create(username: 'babycakes2000' , fullname: 'Johnny Cash' , bio: 'Love to travel. Hate to waste money.' , image_url: 'https://f0.pngfuel.com/png/981/645/default-profile-picture-png-clip-art.png')

property1 = Property.create(owner_id: user1.id, name: 'Camp Far North', city: 'Middle of Nowhere', state: 'Montana', details: 'You are on your own with this camp site')
property2 = Property.create(owner_id: user2.id, name: 'Tiny House Camp', city: 'Salt Lake City', state: 'Utah', details: 'Beautiful national parks. Onsite showers.')
property3 = Property.create(owner_id: user3.id, name: 'Lake Tahoe South', city: 'Lake Tahoe', state: 'California', details: 'Beautiful views of the lake, and casinos near by.')
# property4 = Property.create(user_id: user2.id, name: 'Deep Creek Camping', city: 'Deep Creek', state: 'Maryland', details: 'Just a few hour drive from DC and Baltimore.')
# property5 = Property.create(user_id: user3.id, name: 'Beach Camp Grounds', city: 'Ocean City', state: 'Maryland', details: 'Camping in the sand dunes and an ocean beeze. ')


reservation1 = Reservation.create(user_id: user2, property_id: property1 ,start_date: "05-21-20", end_date: "05-27-20")
reservation2 = Reservation.create(user_id: user1, property_id: property2 ,start_date: "05-23-20", end_date: "05-28-20")
reservation3 = Reservation.create(user_id: user4, property_id: property3 ,start_date: "05-22-20", end_date: "05-26-20")
reservation4 = Reservation.create(user_id: user3, property_id: property1 ,start_date: "05-25-20", end_date: "05-29-20")
reservation5 = Reservation.create(user_id: user5, property_id: property2 ,start_date: "05-30-20", end_date: "06-05-20")


review1 = Review.create(user_id: user2.id, reservation_id: reservation1.id, rating: 4, content: 'Nice stay but could have been better')
review2 = Review.create(user_id: user1.id, reservation_id: reservation2.id, rating: 5, content: 'loved it!')
review3 = Review.create(user_id: user4.id, reservation_id: reservation3.id, rating: 2, content: 'Had a great view!')


