class Api::V1::Bitcoin:MonthController < ApplicationController
  def show
    render json: Bitcoin.sort_by_month
  end
end
