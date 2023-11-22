class LessonsController < ApplicationController
  def index
    @lessons = params[:subject].present? ? Lesson.where(subject: params[:subject].capitalize) : Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @teacher_availabilities = TeacherAvailability.find_by(user: @lesson.user)
  end
end
