class Api::V1::Etherium:MonthController < ApplicationController
  def show
    render json: Etherium.group_by_month
  end
end
