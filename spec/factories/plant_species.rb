FactoryBot.define do
  factory :plant_species do
    scientific_name { "MyString" }
    common_name { "MyString" }
    description { "MyText" }
    care_guide { "MyText" }
    photo_url { "MyString" }
  end
end
