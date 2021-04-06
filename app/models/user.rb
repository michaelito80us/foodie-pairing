class User < ApplicationRecord
  has_many :slots
  has_many :bookings
end
