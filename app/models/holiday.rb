class Holiday < ApplicationRecord
  validates :proposed_date, presence: true
  belongs_to :type_vacation
end
