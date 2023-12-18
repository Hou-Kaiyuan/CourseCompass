class ProfilesController < ApplicationController
  def show
    puts("checking session[:uid] in profiles_controller = #{session[:uid]}")
    if session[:uid].present?
      @user = User.find_by(uid: session[:uid])
      @course_enrollments = CourseEnrollment.where(user: @user)
    else
      redirect_to root_path, notice: "You must be logged in to view this page."
    end
  end
end
