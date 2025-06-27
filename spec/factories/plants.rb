FactoryBot.define do
  factory :plant do
    user { nil }
    plant_species { nil }
    name { "MyString" }
    acquired_on { "2025-06-27" }
    photo_url { "MyString" }
    notes { "MyText" }
    is_public { false }
  end
end
