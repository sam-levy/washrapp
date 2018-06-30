class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :washer, :integer, default: 0
    add_column :users, :avatar_photo, :string
    add_column :users, :phone_number, :string
  end
end
