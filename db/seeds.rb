# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#create 5 cities in the table city
5.times do
  City.create!(name: Faker::Simpsons.character)
end

#create 5 strolls in the table stroll
5.times do
  Stroll.create!(name: Faker::Simpsons.character)
end

#create 10 dogsitters in the table dogsitter
10.times do
  Dogsitter.create!(name: Faker::Hobbit.character, city_id: rand(1..City.all.count), stroll_id: rand(1..Stroll.all.count))
end

#create 10 dogs in the table dog
10.times do
  Dog.create!(name: Faker::Simpsons.character, city_id: rand(1..City.all.count), stroll_id: rand(1..Stroll.all.count))
end
