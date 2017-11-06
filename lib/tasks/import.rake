require 'csv'

desc "Import data from csv file"
task :import => [:environment] do

   bitcoin = "./db/data/bitcoin_cash_price.csv"

  CSV.foreach(bitcoin, :headers => :true) do |row|
    b = Bitcoin.new
    b.date = row['Date']
    b.open = row['Open']
    b.high = row['High']
    b.low = row['Low']
    b.close = row['Close']
    b.volume = row['Volume']
    b.market_cap = row['Market Cap']
    b.save!
  end

   ethereum = "./db/data/ethereum_classic_price.csv"

  CSV.foreach(ethereum, :headers => :true) do |row|
     e = Ethereum.new
     e.date = row['Date']
     e.open = row['Open']
     e.high = row['High']
     e.low = row['Low']
     e.close = row['Close']
     e.volume = row['Volume']
     e.market_cap = row['Market Cap']
     e.save!
  end
end
