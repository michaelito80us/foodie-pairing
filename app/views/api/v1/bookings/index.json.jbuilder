json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :restaurant_name, :slot_date, :slot_time, :status
  end
end
