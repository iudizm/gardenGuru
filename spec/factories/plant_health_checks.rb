FactoryBot.define do
  factory :plant_health_check do
    plant { nil }
    user { nil }
    photo_url { "MyString" }
    diagnosis { "MyText" }
    notes { "MyText" }
  end
end
