class User < ApplicationRecord
  has_many :slots
  has_many :bookings

  validates :name, :favorie_cuisine, presence: true
  validates :self_introduction, length: { Minimum: 80 }
end
