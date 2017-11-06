class Api::V1::Ethereum:MonthController < ApplicationController
  def show
    render json: Ethereum.group_by_month
  end
end
