class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :profession, :string
    add_column :users, :favorie_cuisine, :string
    add_column :users, :self_introduction, :text
    add_column :users, :photo, :string
  end
end
