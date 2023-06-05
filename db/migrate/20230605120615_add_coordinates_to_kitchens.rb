class AddCoordinatesToKitchens < ActiveRecord::Migration[7.0]
  def change
    add_column :kitchens, :latitude, :float
    add_column :kitchens, :longitude, :float
  end
end
