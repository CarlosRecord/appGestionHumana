class TypePermission < ApplicationRecord
  validates :description, presence: true
  has_many :permissions
end
