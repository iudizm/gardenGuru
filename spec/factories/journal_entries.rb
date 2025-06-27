FactoryBot.define do
  factory :journal_entry do
    plant { nil }
    user { nil }
    entry_type { 1 }
    content { "MyText" }
    photo_url { "MyString" }
  end
end
