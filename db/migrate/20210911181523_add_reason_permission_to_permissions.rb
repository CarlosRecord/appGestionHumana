class AddReasonPermissionToPermissions < ActiveRecord::Migration[6.1]
  def change
    add_reference :permissions, :reason_permission, null: false, foreign_key: true
  end
end
