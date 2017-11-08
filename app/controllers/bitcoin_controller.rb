class BitcoinController < ApplicationController

  def index
    @bitcoins = Bitcoin.all.paginate(page: params[:page], per_page: 25)
  end


end
