class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :teacher_availability
  has_many :lessons
  has_many :bookings, through: :lessons
  has_many :reviews, through: :bookings
  validates :education_level, inclusion: { in: %w(Secondary Undergraduate Masters MBA PhD) }
  validates :first_name, :last_name, presence: true
end
