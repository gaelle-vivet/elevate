class CreateTeacherAvailabilities < ActiveRecord::Migration[7.1]
  def change
    create_table :teacher_availabilities do |t|
      t.boolean :monday_am, default: false
      t.boolean :monday_pm, default: false
      t.boolean :tuesday_am, default: false
      t.boolean :tuesday_pm, default: false
      t.boolean :wednesday_am, default: false
      t.boolean :wednesday_pm, default: false
      t.boolean :thursday_am, default: false
      t.boolean :thursday_pm, default: false
      t.boolean :friday_am, default: false
      t.boolean :friday_pm, default: false
      t.boolean :saturday_am, default: false
      t.boolean :saturday_pm, default: false
      t.boolean :sunday_am, default: false
      t.boolean :sunday_pm, default: false
      t.references :users, null: false, foreign_key: true
      t.timestamps
    end
  end
end
