# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Lindsey", password: "lindsey")
User.create(name: "Naz", password: "naz")
User.create(name: "Jason", password: "jason")
User.create(name: "Alex", password: "alex")


Sight.create(name: "Georgia O'Keefe", city: "New Mexico")
Sight.create(name: "Kelso Sand Dunes", city: "Joshua Tree")
Sight.create(name: "Montreal Biodome", city: "Montreal")
Sight.create(name: "Big Slice of Cheese", city: "Madison")

Vacation.create(name: "Honeymoon", sight_id:(rand(1..6)), user_id:(rand(1..8)))
Vacation.create(name: "Summer Trip", sight_id:(rand(1..6)), user_id:(rand(1..8)))
Vacation.create(name: "Winter Escape", sight_id:(rand(1..6)), user_id:(rand(1..8)))
Vacation.create(name: "Staycation", sight_id:(rand(1..6)), user_id:(rand(1..8)))

# <% @vacations.each do |vacation|  %>
#   <p><%= link_to vacation.name, vacation_path(vacation) %></p>
# <% end %>
