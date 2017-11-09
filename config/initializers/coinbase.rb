class CoinbaseApi
  def self.client
    client = Coinbase::Wallet::Client.new(api_key: ENV['API_KEY'], api_secret: ENV['API_SECRET'])
  end

end
