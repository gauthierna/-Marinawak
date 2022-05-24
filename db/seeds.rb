# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Boat.destroy_all

puts "Creating users..."
puts "Create user 1..."
user_1 = User.create!(first_name: "James", last_name: "Bond", email: "test@test.com", password: "azerty")
puts "User 1 created"


puts "Create user 2..."
user_2 = User.create!(first_name: "Patrick", last_name: "Balkany", email: "pbalkany@prison.com", password: "azerty")
puts "User 2 created"

puts "Create user 3..."
user_3 = User.create!(first_name: "Jacques-Yves", last_name: "Cousteau", email: "jyc@ocean.com", password: "azerty")
puts "User 3 created"





puts "Creating boats..."

boat = Boat.new(name: "Black Pearl", category:"Action", capacity: 40, price_per_day: 3000, user: user_3)
boat.photos.attach([
  {
    io: File.open('public/images/bp1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/bp2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/bp3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat.save!

puts "Create boat 2...."

boat_2 = Boat.new(name: "Calypso", category:"Exploration", capacity: 50, price_per_day: 1500, user: user_3)
boat_2.photos.attach([
  {
    io: File.open('public/images/Calypso1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/Calypso2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/Calypso3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_2.save!

puts "Create boat 3...."

boat_3 = Boat.new(name: "Gunboat", category:"Speed", capacity: 5, price_per_day: 10500, user: user_2)
boat_3.photos.attach([
  {
    io: File.open('public/images/gb1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/gb2.png'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/gb3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_3.save!


boat_4 = Boat.new(name: "Itama", category:"Luxury", capacity: 20, price_per_day: 201500, user: user_2)
boat_4.photos.attach([
  {
    io: File.open('public/images/itama1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/itama2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/itama3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_4.save!


boat_5 = Boat.new(name: "Q Boat", category:"Speed", capacity: 1, price_per_day:1500, user: user_1)
boat_5.photos.attach([
  {
    io: File.open('public/images/qb1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/qb2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/qb3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_5.save!

boat_6 = Boat.new(name: "Jeannot DB 43", category:"Luxury", capacity: 25, price_per_day:21500, user: user_2)
boat_6.photos.attach([
  {
    io: File.open('public/images/db1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/db2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/db3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_6.save!
