require "#{Rails.root}/lib/currencies/currency_client.rb"

class Currenciesontroller < ApplicationController
  def show
    @currencies = params[:id] ? params[:id].downcase : ''
    case @currencies
    when  !Currency.currency_types.include?(@currencies)
      @currencies = {}
    else
      @currencies = set_currencies(@currencies)
    end
  end


end
