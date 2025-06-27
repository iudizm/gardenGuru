class CreatePlantSpecies < ActiveRecord::Migration[8.0]
  def change
    create_table :plant_species do |t|
      t.string :scientific_name
      t.string :common_name
      t.text :description
      t.text :care_guide
      t.string :photo_url

      t.timestamps
    end
  end
end
