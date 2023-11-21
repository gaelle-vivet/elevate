class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.references :booking, null: false, foreign_key: true
      t.timestamps
      validates :comment, presence: true, length: { minimum: 10, maximum: 500 }
    end
  end
end
