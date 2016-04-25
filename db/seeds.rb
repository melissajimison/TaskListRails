# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Go to Brunch", description: "Ask if it is hot, if it is veggetarian, and don't get French Toast" },
  { name: "Go to Lunch", description: "Don't go to the Deli, dont get sandwich", completed_at: random_time },
  { name: "Go to Second Lunch", description: "Colombian Candies" },
  { name: "Play the pending chess games", description: "I would lose if dont play a game for 5 days", completed_at: random_time },
  { name: "Trip to Portland", description: "Get cash, and those fun size personal products" },
  { name: "Water Plants", description: "Use the sprinkler in the garden house" },
  { name: "Nap", description: "20 minutes nap after second lunch", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end
