class AddMessageToSlots < ActiveRecord::Migration[6.0]
  def change
    add_column :slots, :message, :text
  end
end
