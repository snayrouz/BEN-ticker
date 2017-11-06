class Api::V1::Etherium:WeekController < ApplicationController
  def show
    render json: Etherium.group_by_week
  end
end
