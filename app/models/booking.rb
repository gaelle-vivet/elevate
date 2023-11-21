# app/models/booking.rb
class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_one :review

  DURATION_OPTIONS = [60, 90, 180].freeze
  STATUS_OPTIONS = %w(Pending Confirmed Completed).freeze

  validates :duration_minutes, inclusion: { in: DURATION_OPTIONS, message: 'must be 60, 90, or 180 minutes' }
  validates :status, inclusion: { in: STATUS_OPTIONS }

  # Additional Attributes
  validates :occurs_on, presence: true
  validates :is_online, inclusion: { in: [true, false] }
  validates :address, presence: true, if: -> { !is_online? }

  # Associations
  validates :user, presence: true
  validates :lesson, presence: true

  def calculate_total_cost
    hourly_rate * (duration_minutes.to_f / 60)
  end

  def is_confirmed?
    status == 'Confirmed'
  end

  def start_time
    occurs_on
  end

  def end_time
    occurs_on + duration_minutes.minutes
  end
end
