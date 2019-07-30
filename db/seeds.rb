# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create(username: 'dude_bro', hometown_city: 'houston', hometown_country: 'USA', email: 'brosforlife@gmail.com', password: 'w' )
user2 = User.create(username: 'dude_brah', hometown_city: 'houston', hometown_country: 'USA', email: 'brahsforlife@gmail.com', password: 'asdlfk' )
user3 = User.create(username: 'username', hometown_city: 'houston', hometown_country: 'USA', email: 'brahsforlife@gmail.com', password: 'password' )


houston = City.create(name: "Houston", country: "USA")
austin = City.create(name: "Austin", country: "USA")

user_city1 = UserCity.create(user: user1, city: houston)
user_city2 = UserCity.create(user: user1, city: austin)
user_city3 = UserCity.create(user: user2, city: houston)
user_city4 = UserCity.create(user: user3, city: austin)