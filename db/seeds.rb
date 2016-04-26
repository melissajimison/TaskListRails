# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

people = [
  { name: "Melissa", fav_color: "Azul" },
  { name: "David", fav_color: "Rojo" },
  { name: "Gato", fav_color: "Negro" },
]

people.each do |person|
  Person.create person
end

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Go to Brunch", description: "Ask if it is hot, if it is veggetarian, and don't get French Toast", person_id: 1 },
  { name: "Go to Lunch", description: "Don't go to the Deli, dont get sandwich", completed_at: random_time, person_id: 2  },
  { name: "Go to Second Lunch", description: "Colombian Candies", person_id: 1  },
  { name: "Play the pending chess games", description: "I would lose if dont play a game for 5 days", completed_at: random_time, person_id: 2 },
  { name: "Trip to Portland", description: "Get cash, and those fun size personal products", person_id: 3 },
  { name: "Water Plants", description: "Use the sprinkler in the garden house", person_id: 3  },
  { name: "Nap", description: "20 minutes nap after second lunch", completed_at: random_time, person_id: 1  }
]

tasks.each do |task|
  Task.create task
end
