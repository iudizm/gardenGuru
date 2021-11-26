FactoryGirl.define do
  factory :plant do
    factory :marijuana_sativa do
      name "Marijuana (sativa)"
      scientific_name "Cannabis sativa"
      average_height 180.0
      life_cycle "semestral"
      is_consumable true
    end
    factory :sunflower do
      name "Common sunflower"
      scientific_name "Helianthus annuus"
      average_height 243.84
      life_cycle "annual"
      is_consumable false
    end
  end
end
