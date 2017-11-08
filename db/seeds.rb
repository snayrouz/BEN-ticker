require 'csv'

start = Time.now

puts "started seeding at #{start}"

User.destroy_all

user_1 = User.create(first_name: "Sam", last_name: "Nayrouz", username: "snayrouz", email: "sam@sam.com", password: "sam123", phone: "+13864511696")
user_2 = User.create(first_name: "Darby", last_name: "Kurtz", username: "dkurtz", email: "darby@darby.com", password: "darby123", phone: "+13033333333")
user_3 = User.create(first_name: "David", last_name: "Feinstein", username: "dfeinstein", email: "david@davi.com", password: "david123", phone: "+13033333333")
user_4 = User.create(first_name: "Joe", last_name: "Teno", username: "jteno", email: "joe@joe.com", password: "joe123", phone: "+13033333333")
user_5 = User.create(first_name: "Richard", last_name: "Dixon", username: "rdixon", email: "richard@richard.com", password: "richard123", phone: "+13033333333")
puts "Users seeded"

  bitcoin = "./lib/seeds/bitcoin_price.csv"

  CSV.foreach(bitcoin, :headers => :true) do |row|
    b = Bitcoin.new
    b.date = row['Date']
    b.open = row['Open']
    b.high = row['High']
    b.low = row['Low']
    b.close = row['Close']
    b.save!
  end

  ethereum = "./lib/seeds/ethereum_price.csv"

  CSV.foreach(ethereum, :headers => :true) do |row|
     e = Ethereum.new
     e.date = row['Date']
     e.open = row['Open']
     e.high = row['High']
     e.low = row['Low']
     e.close = row['Close']
     e.save!
  end

puts "There are now #{Bitcoin.count} rows in the bitcoins table"

puts "There are now #{Ethereum.count} rows in the ethereums table"

puts "Seeding took #{Time.now - start} seconds"
