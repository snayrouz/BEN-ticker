# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
start = Time.now

puts "started seeding at #{start}"

User.destroy_all

user_1 = User.create(first_name: "Sam", last_name: "Nayrouz", username: "snayrouz", email: "sam@sam.com", password: "sam123", phone: "+13864511696")
user_2 = User.create(first_name: "Darby", last_name: "Kurtz", username: "dkurtz", email: "darby@darby.com", password: "darby123", phone: "+13033333333")
user_3 = User.create(first_name: "David", last_name: "Feinstein", username: "dfeinstein", email: "david@davi.com", password: "david123", phone: "+13033333333")
user_4 = User.create(first_name: "Joe", last_name: "Teno", username: "jteno", email: "joe@joe.com", password: "joe123", phone: "+13033333333")
user_5 = User.create(first_name: "Richard", last_name: "Dixon", username: "rdixon", email: "richard@richard.com", password: "richard123", phone: "+13033333333")

puts "Seeding took #{Time.now - start} seconds"
