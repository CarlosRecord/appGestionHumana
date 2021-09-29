class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.date :request_date
      t.boolean :authorization_gh
      t.boolean :authorization_dir

      t.timestamps
    end
  end
end
