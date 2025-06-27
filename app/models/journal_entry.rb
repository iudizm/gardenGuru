class JournalEntry < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  enum :entry_type, { note: 0, photo: 1, milestone: 2, health_check: 3 }, default: :note

  validates :content, presence: true, length: { minimum: 1, maximum: 1000 }
  validates :entry_type, presence: true
  validates :user_id, presence: true

  scope :recent, -> { order(created_at: :desc) }
  scope :by_type, ->(type) { where(entry_type: type) }
  scope :with_photos, -> { where.not(photo_url: [nil, '']) }

  def has_photo?
    photo_url.present?
  end

  def display_title
    case entry_type
    when 'note'
      'Note'
    when 'photo'
      'Photo Update'
    when 'milestone'
      'Milestone'
    when 'health_check'
      'Health Check'
    else
      'Entry'
    end
  end

  def short_content
    content.truncate(100)
  end
end
