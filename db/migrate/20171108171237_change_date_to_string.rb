class ChangeDateToString < ActiveRecord::Migration[5.1]
  def change
    change_column :bitcoins, :date, :string
  end
end
