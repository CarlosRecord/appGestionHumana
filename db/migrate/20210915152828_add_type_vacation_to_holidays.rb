class AddTypeVacationToHolidays < ActiveRecord::Migration[6.1]
  def change
    add_reference :holidays, :type_vacation, null: false, foreign_key: true
  end
end
