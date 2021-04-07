json.user do
  json.extract! @user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo

  json.slots do
    json.array! @slots do |slot|
      json.extract! slot, :id, :date, :time, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude
    end
  end

  json.bookings do
    json.array! @bookings do |booking|
      json.extract! booking,  :slot_id, :status
      json.extract! booking.slot, :id, :date, :time, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude
      json.extract! booking.slot.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
    end
  end
end
