class Slot < ApplicationRecord
  belongs_to :user

  validates :restaurant_name, :date, :time, presence: true
end
