class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :cedula
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :cell_phone

      t.timestamps
    end
  end
end
