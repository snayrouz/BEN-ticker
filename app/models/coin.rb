class Coin
  attr_reader :amount,
              :currency

  def initialize(data)
    @amount = data[:amount]
    @currency = data[:currency]
  end

end
