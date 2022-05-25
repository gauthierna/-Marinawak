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

boat_7 = Boat.new(name: "Titanic", category:"Luxury", capacity: 1000, price_per_day:1250000, user: user_2)
boat_7.photos.attach([
  {
    io: File.open('public/images/t1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/t2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/t3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_7.save!

boat_8 = Boat.new(name: "Galeon 325", category:"Speed", capacity: 5, price_per_day:20000, user: user_1)
boat_8.photos.attach([
  {
    io: File.open('public/images/g1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/g2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/g3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_8.save!

boat_9 = Boat.new(name: "Explorer Pro", category:"Family", capacity: 1, price_per_day:10, user: user_2)
boat_9.photos.attach([
  {
    io: File.open('public/images/ex1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/ex2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/ex3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_9.save!

boat_10 = Boat.new(name: "Catana", category:"Catamaran", capacity: 5, price_per_day:2400, user: user_2)
boat_10.photos.attach([
  {
    io: File.open('public/images/ca1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/ca2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/ca3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_10.save!

boat_11 = Boat.new(name: "Charles de Gaulle", category:"Military", capacity: 135, price_per_day:12500, user: user_1)
boat_11.photos.attach([
  {
    io: File.open('public/images/cdg1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/cdg2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/cdg3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_11.save!

boat_12 = Boat.new(name: "Le Marité", category:"Voilier", capacity: 6, price_per_day:1500, user: user_3)
boat_12.photos.attach([
  {
    io: File.open('public/images/ma1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/ma2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/ma3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_12.save!

boat_13 = Boat.new(name: "Le Redoutable", category:"Submarine", capacity: 6, price_per_day:321500, user: user_3)
boat_13.photos.attach([
  {
    io: File.open('public/images/lr1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/lr2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/lr3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_13.save!

boat_14 = Boat.new(name: "RMS Queen Elizabeth", category:"Paquebot", capacity: 14000, price_per_day:1500000, user: user_3)
boat_14.photos.attach([
  {
    io: File.open('public/images/qe1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/qe2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/qe3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_14.save!

boat_15 = Boat.new(name: "Vida 3", category:"Speedboat", capacity: 3, price_per_day:150000, user: user_1)
boat_15.photos.attach([
  {
    io: File.open('public/images/v1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/vi2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/vi3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
])
boat_15.save!
