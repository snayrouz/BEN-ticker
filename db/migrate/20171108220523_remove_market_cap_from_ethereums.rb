class RemoveMarketCapFromEthereums < ActiveRecord::Migration[5.1]
  def change
    remove_column :ethereums, :market_cap, :decimal
  end
end
