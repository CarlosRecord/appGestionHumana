class Certificate < ApplicationRecord
  validates :addressee, presence: true, format: /@record.com.co/
  belongs_to :directed_certificate
end
