class Bitcoin::AverageOpenController < ApplicationController

  def index
    @bitcoin = Bitcoin.average_open
  end

end
