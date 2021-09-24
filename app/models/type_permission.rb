class TypePermission < ApplicationRecord
  validates :description, presence: true, format: { with: /\A[a-z\sA-Z]+\z/,
    message: "solo permite letras" }
  validates :description, presence: true
  has_many :permissions
end
