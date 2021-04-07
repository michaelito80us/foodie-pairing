json.slots do
  json.array! @slots do |slot|
    json.extract! slot, :user_id, :date, :time, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude
  end
end
