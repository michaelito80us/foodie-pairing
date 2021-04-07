# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

5.times do
  n = 10
  namem = User.new(
    name: Faker::FunnyName.name,
    gender: 'male',
    age: rand(25..50),
    profession: Faker::Job.title,
    favorie_cuisine: Faker::Restaurant.type,
    self_introduction: Faker::GreekPhilosophers.quote,
    photo: "https://randomuser.me/api/portraits/men/#{n}.jpg"
  )
  puts "user male: #{namem}"
  namem.save!
  n+=5
end


5.times do
  n = 10
  namef = User.new(
    name: Faker::FunnyName.name,
    gender: 'female',
    age: rand(25..50),
    profession: Faker::Job.title,
    favorie_cuisine: Faker::Restaurant.type,
    self_introduction: Faker::GreekPhilosophers.quote,
    photo: "https://randomuser.me/api/portraits/women/#{n}.jpg"
  )
  puts "user female: #{namef}"
  namef.save!
  n+=5
end
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
  s = Slot.new(
    latitude: Faker::Address.latitude,
    longtitude: Faker::Address.longitude,
    restaurant_address: Faker::Address.street_address,
    restaurant_name: Faker::Restaurant.name,
    date: Faker::Date.forward(days: 23),
    time: '21:00',
    user_id: rand(1..10)
  )
  puts "slot: #{s}"
  s.save!
end