class Bitcoin::AverageHighController < ApplicationController

  def index
    @bitcoin = Bitcoin.average_high
  end

end
