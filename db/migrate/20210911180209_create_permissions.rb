class CreatePermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :permissions do |t|
      t.date :start_date
      t.date :end_date
      t.text :proposal

      t.timestamps
    end
  end
end
