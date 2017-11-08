require 'csv'

desc "Import data from csv file"
task :import => [:environment] do

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
end
