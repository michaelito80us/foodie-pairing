json.user do
  json.extract! @user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo

  json.pendingbookings do
    json.array! @pendingbookings do |booking|
      json.extract! booking, :id, :status
      json.user booking.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
      json.slot booking.slot, :id, :restaurant_name, :date, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open

 
    end
  end

json.bookings do
    json.array! @bookings do |booking|
      json.extract! booking, :id, :status
      json.user booking.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
      json.slot booking.slot, :id, :restaurant_name, :date, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open

    end
  end

end