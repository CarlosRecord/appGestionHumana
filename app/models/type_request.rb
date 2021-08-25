class TypeRequest < ApplicationRecord
    validates :description, presence: true
end
