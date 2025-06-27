class CreateJournalEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :journal_entries do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :entry_type
      t.text :content
      t.string :photo_url

      t.timestamps
    end
  end
end
