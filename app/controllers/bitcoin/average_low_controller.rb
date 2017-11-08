class Bitcoin::AverageLowController < ApplicationController

  def index
    @bitcoin = Bitcoin.average_low
  end

end
