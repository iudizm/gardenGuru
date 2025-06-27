class PlantHealthCheck < ApplicationRecord
  # Relationships
  belongs_to :plant
  belongs_to :user

  # Validations
  validates :notes, length: { maximum: 1000 }
  validates :diagnosis, length: { maximum: 500 }

  # Scopes
  scope :recent, -> { order(created_at: :desc) }
  scope :with_diagnosis, -> { where.not(diagnosis: [nil, '']) }
  scope :with_photos, -> { where.not(photo_url: [nil, '']) }

  # Methods
  def has_photo?
    photo_url.present?
  end

  def has_diagnosis?
    diagnosis.present?
  end

  def display_title
    if has_diagnosis?
      "Health Check - #{diagnosis}"
    else
      "Health Check"
    end
  end

  def short_notes
    notes&.truncate(100)
  end
end
