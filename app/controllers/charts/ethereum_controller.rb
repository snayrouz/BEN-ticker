class Charts::EthereumController < ApplicationController

  def avg_eth_open_monthly
    render json: Ethereum.average_monthly_open
  end

  def avg_eth_open_yearly
    render json: Ethereum.average_yearly_open
  end

  def avg_eth_high_monthly
    render json: Ethereum.average_monthly_high
  end

  def avg_eth_high_yearly
    render json: Ethereum.average_yearly_high
  end

  def avg_eth_low_monthly
    render json: Ethereum.average_monthly_low
  end

  def avg_eth_low_yearly
    render json: Ethereum.average_yearly_low
  end

  def avg_eth_close_monthly
    render json: Ethereum.average_monthly_close
  end

  def avg_eth_close_yearly
    render json: Ethereum.average_yearly_close
  end

end
