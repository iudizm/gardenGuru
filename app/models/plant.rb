class Plant < ApplicationRecord
  # Relationships
  belongs_to :user
  belongs_to :plant_species
  has_many :journal_entries, dependent: :destroy
  has_many :reminders, dependent: :destroy
  has_many :plant_health_checks, dependent: :destroy

  # Validations
  validates :name, presence: true, length: { minimum: 1, maximum: 50 }
  validates :acquired_on, presence: true
  validates :is_public, inclusion: { in: [true, false] }

  # Scopes
  scope :public_plants, -> { where(is_public: true) }
  scope :recently_acquired, -> { order(acquired_on: :desc) }
  scope :with_reminders, -> { joins(:reminders).distinct }

  # Methods
  def age_in_days
    return 0 unless acquired_on
    (Date.current - acquired_on).to_i
  end

  def age_in_months
    return 0 unless acquired_on
    ((Date.current.year * 12 + Date.current.month) - (acquired_on.year * 12 + acquired_on.month)).abs
  end

  def display_name
    name.presence || plant_species.display_name
  end

  def has_photo?
    photo_url.present?
  end

  def active_reminders
    reminders.where(completed_at: nil)
  end

  def overdue_reminders
    active_reminders.where('next_due_at < ?', Time.current)
  end

  def last_journal_entry
    journal_entries.order(created_at: :desc).first
  end

  def last_health_check
    plant_health_checks.order(created_at: :desc).first
  end
end
