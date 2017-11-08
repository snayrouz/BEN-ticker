class Coin
  attr_reader :base,
              :amount,
              :currency

  def initialize(data)
    @base = data[:base]
    @amount = data[:amount]
    @currency = data[:currency]
  end

end
