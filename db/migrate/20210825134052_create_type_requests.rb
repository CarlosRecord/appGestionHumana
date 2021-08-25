class CreateTypeRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :type_requests do |t|
      t.string :description

      t.timestamps
    end
  end
end
