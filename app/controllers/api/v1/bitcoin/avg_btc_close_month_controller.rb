class Api::V1::Bitcoin::AvgBtcCloseMonthController < ApplicationController

  def show
    render json: Bitcoin.average_close
  end

end
