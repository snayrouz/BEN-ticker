class RemoveVolumeFromEthereums < ActiveRecord::Migration[5.1]
  def change
    remove_column :ethereums, :volume, :decimal
  end
end
