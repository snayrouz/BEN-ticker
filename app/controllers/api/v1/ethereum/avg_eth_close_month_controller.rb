class Api::V1::Bitcoin::AvgEthCloseMonthController < ApplicationController

  def show
    render json: Ethereum.average_close
  end

end
