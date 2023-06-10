class AddPriceToKitchens < ActiveRecord::Migration[7.0]
  def change
    add_monetize :kitchens, :price, currency: { present: false }
  end
end
