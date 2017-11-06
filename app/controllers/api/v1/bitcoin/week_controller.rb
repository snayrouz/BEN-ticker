class Api::V1::Bitcoin:WeekController < ApplicationController
  def show
    render json: Bitcoin.sort_by_week
  end
end
