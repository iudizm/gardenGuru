FactoryGirl.define do
  factory :plant do
    name "Marijuana (sativa)"
    scientific_name "Cannabis sativa"
    average_height 180.0
    life_cycle "semestral"
    is_consumable true
  end

  factory :second_plant, class: "Plant" do
    name "Sunflower"
    scientific_name "Helianthus annuus"
    average_height 190.9
    life_cycle "annual"
    is_consumable false
  end

  factory :invalid_plant, class: "Plant" do
    name ""
    scientific_name ""
    average_height nil
    life_cycle nil
    is_consumable nil
  end
end
