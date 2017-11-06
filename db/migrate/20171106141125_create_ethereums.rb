class CreateEthereums < ActiveRecord::Migration[5.1]
  def change
    create_table :ethereums do |t|
      t.datetime :date
      t.numeric :open
      t.numeric :high
      t.numeric :low
      t.numeric :close
      t.numeric :volume
      t.numeric :market_cap

      t.timestamps
    end
  end
end
