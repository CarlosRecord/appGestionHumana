class TypeVacation < ApplicationRecord
  validates :description, presence: true
  has_many :holidays
end
