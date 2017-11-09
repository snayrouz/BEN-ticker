class ChangeEthDateToString < ActiveRecord::Migration[5.1]
  def change
    change_column :ethereums, :date, :string
  end
end
