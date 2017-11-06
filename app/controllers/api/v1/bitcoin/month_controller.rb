class Api::V1::Bitcoin:MonthController < ApplicationController
  def show
    render json: Bitcoin.group_by_month
  end
end
