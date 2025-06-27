class PlantSpecies < ApplicationRecord
  # Relationships
  has_many :plants, dependent: :destroy

  # Validations
  validates :scientific_name, presence: true, uniqueness: true
  validates :common_name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :care_guide, presence: true, length: { minimum: 20 }

  # Scopes
  scope :with_plants, -> { joins(:plants).distinct }
  scope :popular, -> { joins(:plants).group('plant_species.id').order('COUNT(plants.id) DESC') }

  # Methods
  def display_name
    common_name.presence || scientific_name
  end

  def plant_count
    plants.count
  end

  def has_care_guide?
    care_guide.present?
  end
end
