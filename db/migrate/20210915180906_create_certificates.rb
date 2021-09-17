class CreateCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :certificates do |t|
      t.string :addressee
      t.boolean :type_contract
      t.boolean :salary
      t.boolean :funtions
      t.boolean :time_working

      t.timestamps
    end
  end
end
