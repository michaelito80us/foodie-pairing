json.user do
  json.extract! @user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo

  json.pendingbookings do
    json.array! @pendingbookings do |booking|
      json.extract! booking, :id, :status
      json.user booking.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
      json.slot booking.slot, :id, :restaurant_name, :date, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open

      # json.extract! booking, :slot_id, :status
      # json.extract! booking.slot, :id, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open
      # json.date booking.slot.date.strftime("%-d %b %Y")
      # json.time booking.slot.time.strftime("%l:%M %p")
      # json.extract! booking.slot.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
    end
  end

  #   json.array! @slots do |slot|
  #     json.extract! slot, :id, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open
  #     json.date slot.date.strftime("%-d %b %Y")
  #     json.time slot.time.strftime("%l:%M %p")
  #   end
  # end

json.bookings do
    json.array! @bookings do |booking|
      json.extract! booking, :id, :status
      json.user booking.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
      json.slot booking.slot, :id, :restaurant_name, :date, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open

      # json.extract! booking, :slot_id, :status
      # json.extract! booking.slot, :id, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open
      # json.date booking.slot.date.strftime("%-d %b %Y")
      # json.time booking.slot.time.strftime("%l:%M %p")
      # json.extract! booking.slot.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
    end
  end

  # json.bookings do
  #   json.array! @bookings do |booking|
  #     json.extract! booking, :slot_id, :status
  #     json.extract! booking.slot, :id, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open
  #     json.date booking.slot.date.strftime("%-d %b %Y")
  #     json.time booking.slot.time.strftime("%l:%M %p")
  #     json.extract! booking.slot.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
  #   end
  # end
end
