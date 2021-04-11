json.slots do
  json.array! @slots do |slot|
    json.extract! slot, :id, :user_id, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude, :message, :open
    json.extract! slot.user, :photo
    json.date slot.date.strftime("%-d %b %Y")
    json.time slot.time.strftime("%l:%M %p")
  end
end
