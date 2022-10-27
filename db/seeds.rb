# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all


10.times do
    city = City.create!(
      name: Faker::Games::Pokemon.location
      zip_code: Faker::Number.between(from: 0, to: 100))
    end

10.times do
    user = User.create!(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     description: Faker::Quote::shakespeare.hamlet_quote,
     email: Faker::Internet.email,
     age: Faker::Number.between(from: 7, to: 77),
     city: City.all.sample)
    end

20.times do
    gossip = Gossip.create!(
    title: Faker::Book.title,
    content: Faker::Movies::VForVendetta.quote,
    user: User.all.sample)
    end

10.times do
    tag = Tag.create
    title: Faker::Games::Pokemon.name
    end

6.times do 
    private_message = PrivateMessage.create!(
    content: Faker::Movies::Lebowski.quote, 
    sender: User.all.sample, 
    recipient: User.all.sample)
    end
