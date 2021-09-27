class ChangeIntegerLimitInUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :cell_phone, :integer, limit: 8
  end
end
