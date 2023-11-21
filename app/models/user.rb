class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :teacher_availability
  has_many :lessons
  has_many :bookings, through: :lessons
  has_many :reviews, through: :bookings
end
