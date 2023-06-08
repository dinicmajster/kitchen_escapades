class RemoveKitchenIdFromFeatures < ActiveRecord::Migration[7.0]
  def change
    remove_reference :features, :kitchen, foreign_key: true
  end
end
