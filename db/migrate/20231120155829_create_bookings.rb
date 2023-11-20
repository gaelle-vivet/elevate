class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :occurs_on
      t.integer :duration_minutes
      t.boolean :is_online, default: false
      t.string :address
      t.string :status
      t.references :users, null: false, foreign_key: true
      t.references :lessons, null: false, foreign_key: true
      t.timestamps
    end
  end
end
