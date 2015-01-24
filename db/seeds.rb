User.destroy_all
Favorite.destroy_all

User.create(email: "alex@email.com", password: "password", city: "Niskayuna", state: "NY")
User.create(email: "alex2@email.com", password: "password", city: "Niskayuna", state: "NY")

User.first.favorites.create(name: "Chicago", city: "Chicago", state: "IL")
User.first.favorites.create(name: "DC", city: "Washington", state: "DC")
User.first.favorites.create(name: "NYC", city: "New York City", state: "NY")
User.first.favorites.create(name: "San Fran", city: "San Francisco", state: "CA")


User.last.favorites.create(name: "Chicago", city: "Chicago", state: "IL")
User.last.favorites.create(name: "DC", city: "Washington", state: "DC")
User.last.favorites.create(name: "NYC", city: "New York City", state: "NY")
User.last.favorites.create(name: "San Fran", city: "San Francisco", state: "CA")