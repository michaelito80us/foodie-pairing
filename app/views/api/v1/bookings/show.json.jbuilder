json.bookings do
  json.extract! @booking, :id, :user_id, :status
  json.slot do
    json.extract! @booking.slot, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open
    json.date @booking.slot.date.strftime("%-d %b %Y")
    json.time @booking.slot.time.strftime("%l:%M %p")
    json.extract! @booking.slot.user, :id, :name, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
  end
end
