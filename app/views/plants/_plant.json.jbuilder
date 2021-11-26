json.extract! plant, :id, :name, :scientific_name, :average_height, :life_cycle, :is_consumable, :created_at, :updated_at
json.url plant_url(plant, format: :json)
