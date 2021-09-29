class Request < ApplicationRecord
  belongs_to :user
  belongs_to :type_request
  has_one :certificate
end
