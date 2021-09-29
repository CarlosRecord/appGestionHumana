class AddTypeRequestToRequests < ActiveRecord::Migration[6.1]
  def change
    add_reference :requests, :type_request, null: false, foreign_key: true
  end
end
