class CreateFeatureKitchens < ActiveRecord::Migration[7.0]
  def change
    create_table :feature_kitchens do |t|
      t.references :kitchen, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
