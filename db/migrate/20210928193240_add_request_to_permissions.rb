class AddRequestToPermissions < ActiveRecord::Migration[6.1]
  def change
    add_reference :permissions, :request, null: false, foreign_key: true
  end
end
