class RemoveVolumeFromBitcoins < ActiveRecord::Migration[5.1]
  def change
    remove_column :bitcoins, :volume, :decimal
  end
end
