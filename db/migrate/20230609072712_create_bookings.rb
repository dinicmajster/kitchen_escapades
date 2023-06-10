class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :time
      t.integer :duration
      t.boolean :groceries, default: false
      t.boolean :host, default: false
      t.references :kitchen, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
