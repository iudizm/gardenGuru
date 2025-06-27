FactoryBot.define do
  factory :reminder do
    plant { nil }
    user { nil }
    title { "MyString" }
    description { "MyText" }
    schedule_type { 1 }
    next_due_at { "2025-06-27 17:27:56" }
    recurrence_rule { "MyString" }
    completed_at { "2025-06-27 17:27:56" }
  end
end
