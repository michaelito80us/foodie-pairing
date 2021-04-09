class Slot < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :restaurant_name, :date, :time, presence: true

  
  
end
