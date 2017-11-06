class Api::V1::Ethereum:WeekController < ApplicationController
  def show
    render json: Ethereum.group_by_week
  end
end
