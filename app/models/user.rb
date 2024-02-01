class User < ApplicationRecord
  validates :firstName, :lastName, :address, :postalCode, :city, :country, :email, :reason, presence: true
end
