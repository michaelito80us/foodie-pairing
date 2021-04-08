class AddOpenToSlots < ActiveRecord::Migration[6.0]
  def change
    add_column :slots, :open, :boolean, :default => true
  end
end
