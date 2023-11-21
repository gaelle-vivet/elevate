# app/models/lesson.rb
class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings

  VALID_SUBJECTS = %w(Maths English French Philosophy Biology Chemistry Physics).freeze

  validates :subject, presence: true, inclusion: { in: VALID_SUBJECTS }
  validates :description, presence: true, length: { in: 10..500 }
  validates :hourly_rate, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
