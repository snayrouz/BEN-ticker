class CoinService
  def initialize
    @conn = Faraday.new(:url => "https://api.coinbase.com/v2/") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def spot_price
    response = @conn.get("prices/:currency_pair/spot", default_params)
    JSON.parse(response.body, symbolize_names: :true)
  end

  def default_params
    {
      apiKey: ENV['COINBASE_CLIENT_SECRET']
    }
  end

end
