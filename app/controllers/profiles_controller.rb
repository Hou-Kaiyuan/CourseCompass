class ProfilesController < ApplicationController
  def show
    if session[:user_id].present?
      @user = User.find_by(id: session[:user_id])
      @course_enrollments = CourseEnrollment.where(user: @user)
    else
      redirect_to root_path, notice: "You must be logged in to view this page."
    end
  end
end
