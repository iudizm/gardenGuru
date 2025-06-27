class CreatePlantHealthChecks < ActiveRecord::Migration[8.0]
  def change
    create_table :plant_health_checks do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :photo_url
      t.text :diagnosis
      t.text :notes

      t.timestamps
    end
  end
end
