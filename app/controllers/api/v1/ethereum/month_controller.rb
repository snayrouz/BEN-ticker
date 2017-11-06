class Api::V1::Ethereum:MonthController < ApplicationController
  def show
    render json: Ethereum.sort_by_month
  end
end
