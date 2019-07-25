# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'dude_bro', hometown_city: 'houston', hometown_country: 'USA', email: 'brosforlife@gmail.com', hashed_password: 'asdlfk', salt: '123' )
user2 = User.create(username: 'dude_brah', hometown_city: 'houston', hometown_country: 'USA', email: 'brahsforlife@gmail.com', hashed_password: 'asdlfk', salt: '123' )

houston = City.create(name: "Houston", country: "USA", city_api_id: 4699066)
austin = City.create(name: "Austin", country: "USA", city_api_id: 4671654)

user_city1 = UserCity.create(user: user1, city: houston)
user_city2 = UserCity.create(user: user1, city: austin)
user_city3 = UserCity.create(user: user2, city: houston)