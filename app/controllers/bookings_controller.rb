class BookingsController < ApplicationController
  before_action :set_lesson, only: %i[create]
  before_action :authenticate_user!, only: %i[create]

  def index
    if current_user && current_user.is_teacher
      @bookings = Booking.where(lesson: current_user.lessons)
    else
      @bookings = Booking.where(user: current_user)

    end
  end

  def show
    # @bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.lesson = @lesson
    @booking.user = current_user
    @booking.duration_minutes = 60
    @booking.status = "Confirmed"
    @booking.address = "At my place"
    if @booking.save
      redirect_to bookings_index_path
    else
      redirect_to lesson_path(@lesson), alert: "Pick a date and time"
    end
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def booking_params
    params.require(:booking).permit(:occurs_on, :duration_minutes, :lesson_id, :user_id)
  end
end
