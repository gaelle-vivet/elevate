class Review < ApplicationRecord
  belongs_to :booking
  validates :comment, presence: true, length: { minimum: 10, maximum: 500 }
end
