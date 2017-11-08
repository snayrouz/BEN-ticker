class Charts::BitcoinController < ApplicationController

  def avg_btc_open_monthly
    render json: Bitcoin.average_monthly_open
  end

  def avg_btc_open_yearly
    render json: Bitcoin.average_yearly_open
  end

  def avg_btc_high_monthly
    render json: Bitcoin.average_monthly_high
  end

  def avg_btc_high_yearly
    render json: Bitcoin.average_yearly_high
  end

  def avg_btc_low_monthly
    render json: Bitcoin.average_monthly_low
  end

  def avg_btc_low_yearly
    render json: Bitcoin.average_yearly_low
  end

  def avg_btc_close_monthly
    render json: Bitcoin.average_monthly_close
  end

  def avg_btc_close_yearly
    render json: Bitcoin.average_yearly_close
  end

end
