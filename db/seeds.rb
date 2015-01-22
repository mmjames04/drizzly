# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:


#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Favorite.destroy_all

User.create(email: "alex@email.com", password: "password", default_location: "Niskayuna,NY")
User.create(email: "alex2@email.com", password: "password", default_location: "Niskayuna,NY")

User.first.favorites.create(name: "Chicago", location: "Chicago,IL")
User.first.favorites.create(name: "DC", location: "Washington,DC")
User.first.favorites.create(name: "NYC", location: "New York,NY")
User.first.favorites.create(name: "San Fran", location: "San Francisco,CA")


User.last.favorites.create(name: "Chicago", location: "Chicago,IL")
User.last.favorites.create(name: "DC", location: "Washington,DC")
User.last.favorites.create(name: "NYC", location: "New York,NY")
User.last.favorites.create(name: "San Fran", location: "San Francisco,CA")
