class Permission < ApplicationRecord
  validates :start_date, :end_date, presence: true
  validates :proposal, length: { minimum: 20 }
  belongs_to :type_permission
  belongs_to :reason_permission
end
