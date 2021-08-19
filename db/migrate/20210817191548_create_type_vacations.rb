class CreateTypeVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :type_vacations do |t|
      t.string :description

      t.timestamps
    end
  end
end
