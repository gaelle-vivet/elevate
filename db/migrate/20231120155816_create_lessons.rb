class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :subject
      t.text :description
      t.integer :hourly_rate
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
