class User < ApplicationRecord
  validates :cedula, uniqueness: true
  validates :name, :last_name, :cell_phone, presence: true
  validates :email, presence: true, format: /@record.com.co/
end
