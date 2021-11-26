class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.float :average_height
      t.string :life_cycle
      t.boolean :is_consumable

      t.timestamps
    end
  end
end
