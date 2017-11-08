class RemoveMarketCapFromBitcoins < ActiveRecord::Migration[5.1]
  def change
    remove_column :bitcoins, :market_cap, :decimal
  end
end
