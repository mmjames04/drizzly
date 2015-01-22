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
