class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :occurs_on
      t.integer :duration_minutes
      t.boolean :is_online, default: false
      t.string :address
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true
      t.timestamps
    end
  end
end
