class ProfilesController < ApplicationController
  def show
    puts("checking session[:uid] in profiles_controller = #{session[:uid]}")
    if session[:uid].present?
      @user = User.find_by(id: session[:uid])
      puts("checking users profile pic in profiles_controller = #{@user.profile_pic}")
      @course_enrollments = CourseEnrollment.where(user: @user)
    else
      redirect_to root_path, notice: "You must be logged in to view this page."
    end
  end
end
