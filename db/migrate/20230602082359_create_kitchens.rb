class CreateKitchens < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchens do |t|
      t.string :name
      t.string :location
      t.date :availability
      t.text :features
      t.text :description
      t.integer :rating
      t.float :price
      t.text :owner_info

      t.timestamps
    end
  end
end
