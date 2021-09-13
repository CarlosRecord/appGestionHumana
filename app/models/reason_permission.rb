class ReasonPermission < ApplicationRecord
  validates :description, presence: true
  has_many :permissions
end
