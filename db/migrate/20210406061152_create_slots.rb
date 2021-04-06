class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.date :date
      t.time :time
      t.string :restaurant_name
      t.string :restaurant_photo
      t.string :restaurant_address
      t.float :latitude
      t.float :longtitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
