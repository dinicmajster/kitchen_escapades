class RemovePriceFromKitchen < ActiveRecord::Migration[7.0]
  def change
    remove_column :kitchens, :price
  end
end
