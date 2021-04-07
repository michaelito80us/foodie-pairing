json.slot do
  json.extract! @slot, :id, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message
  json.date @slot.date.strftime("%-d %b %Y")
  json.time @slot.time.strftime("%l:%M %p")

  json.user do
    json.extract! @slot.user, :id, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
  end
end
