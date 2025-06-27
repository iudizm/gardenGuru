class Reminder < ApplicationRecord
  # Relationships
  belongs_to :plant
  belongs_to :user

  # Enums
  enum :schedule_type, { once: 0, recurring: 1 }, default: :once

  # Validations
  validates :title, presence: true, length: { minimum: 1, maximum: 100 }
  validates :description, length: { maximum: 500 }
  validates :schedule_type, presence: true
  validates :next_due_at, presence: true

  # Scopes
  scope :active, -> { where(completed_at: nil) }
  scope :overdue, -> { active.where('next_due_at < ?', Time.current) }
  scope :due_today, -> { active.where('next_due_at >= ? AND next_due_at < ?', Time.current.beginning_of_day, Time.current.end_of_day) }
  scope :due_soon, -> { active.where('next_due_at >= ? AND next_due_at < ?', Time.current, 3.days.from_now) }
  scope :completed, -> { where.not(completed_at: nil) }

  # Methods
  def overdue?
    active? && next_due_at < Time.current
  end

  def due_today?
    active? && next_due_at.to_date == Date.current
  end

  def due_soon?
    active? && next_due_at >= Time.current && next_due_at <= 3.days.from_now
  end

  def completed?
    completed_at.present?
  end

  def mark_completed!
    update!(completed_at: Time.current)
  end

  def mark_incomplete!
    update!(completed_at: nil)
  end

  def schedule_next_occurrence!
    return unless recurring?
    return unless recurrence_rule.present?

    # Simple recurrence logic - can be enhanced later
    case recurrence_rule
    when /every (\d+) days?/
      days = $1.to_i
      update!(next_due_at: next_due_at + days.days)
    when /every (\d+) weeks?/
      weeks = $1.to_i
      update!(next_due_at: next_due_at + weeks.weeks)
    when /every (\d+) months?/
      months = $1.to_i
      update!(next_due_at: next_due_at + months.months)
    end
  end
end
