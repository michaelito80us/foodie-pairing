json.slot do
  json.extract! @slot, :id, :date, :time, :restaurant_name, :restaurant_photo, :restaurant_address, :latitude, :longtitude
  # json.created_at @story.created_at.strftime("%Y-%m-%d")

  json.user do
    json.extract! @slot.user, :id, :gender, :age, :profession, :favorie_cuisine, :self_introduction, :photo
  end
end
