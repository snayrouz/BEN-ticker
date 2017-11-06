class Api::V1::Ethereum:WeekController < ApplicationController
  def show
    render json: Ethereum.sort_by_week
  end
end
