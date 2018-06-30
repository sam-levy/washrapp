class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.string :license_plate
      t.string :color
      t.string :name
      t.string :model
      t.string :brand
      t.string :photo

      t.timestamps
    end
  end
end
