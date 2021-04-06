json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :restaurant_name, :restaurant_address, :restaurant_photo, :slot_date, :slot_time, :status, :photo
  end
end

# booking.slot.user
