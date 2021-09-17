class DirectedCertificate < ApplicationRecord
  validates :description, presence: true
  has_many :certificates
end
