class Api::V1::Bitcoin:WeekController < ApplicationController
  def show
    render json: Bitcoin.group_by_week
  end
end
