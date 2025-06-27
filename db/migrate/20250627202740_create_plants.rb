class CreatePlants < ActiveRecord::Migration[8.0]
  def change
    create_table :plants do |t|
      t.references :user, null: false, foreign_key: true
      t.references :plant_species, null: false, foreign_key: true
      t.string :name
      t.date :acquired_on
      t.string :photo_url
      t.text :notes
      t.boolean :is_public

      t.timestamps
    end
  end
end
