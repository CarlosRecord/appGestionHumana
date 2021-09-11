class Permission < ApplicationRecord
  belongs_to :type_permission
  belongs_to :reason_permission
end
