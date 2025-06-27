class CreateReminders < ActiveRecord::Migration[8.0]
  def change
    create_table :reminders do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.integer :schedule_type
      t.datetime :next_due_at
      t.string :recurrence_rule
      t.datetime :completed_at

      t.timestamps
    end
  end
end
