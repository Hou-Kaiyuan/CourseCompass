class ProfilesController < ApplicationController
  def show
    if session[:uid].present?
      @user = User.find_by(id: session[:uid])
      @course_enrollments = CourseEnrollment.where(user: @user)
    else
      redirect_to root_path, notice: "You must be logged in to view this page."
    end
  end
end
