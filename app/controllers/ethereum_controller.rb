class EthereumController < ApplicationController
  def index
    @ethereums = Ethereum.all.paginate(page: params[:page], per_page: 20)
  end
end
