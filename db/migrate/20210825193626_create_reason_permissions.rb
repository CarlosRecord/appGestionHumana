class CreateReasonPermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :reason_permissions do |t|
      t.string :description

      t.timestamps
    end
  end
end
