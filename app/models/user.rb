class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enums
  enum :role, { user: 0, expert: 1, admin: 2 }, default: :user

  # Relationships
  has_many :plants, dependent: :destroy
  has_many :journal_entries, dependent: :destroy
  has_many :reminders, dependent: :destroy
  has_many :plant_health_checks, dependent: :destroy
  
  # Social relationships (for future features)
  # has_many :follows, class_name: 'Follow', foreign_key: 'follower_id', dependent: :destroy
  # has_many :followed_users, through: :follows, source: :followed
  # has_many :followers, class_name: 'Follow', foreign_key: 'followed_id', dependent: :destroy
  # has_many :follower_users, through: :followers, source: :follower

  # Validations
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
  validates :bio, length: { maximum: 500 }

  # Scopes
  scope :experts, -> { where(role: :expert) }
  scope :public_profiles, -> { where.not(avatar_url: nil) }

  # Methods
  def expert?
    role == 'expert' || role == 'admin'
  end

  def display_name
    name.presence || email.split('@').first
  end

  def plant_count
    plants.count
  end

  def active_reminders_count
    reminders.where(completed_at: nil).count
  end
end
