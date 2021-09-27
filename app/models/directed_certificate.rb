class DirectedCertificate < ApplicationRecord
  validates :description, presence: true, format: { with: /\A[a-z\sA-Z]+\z/,
    message: "solo permite letras" }
  has_many :certificates
end
