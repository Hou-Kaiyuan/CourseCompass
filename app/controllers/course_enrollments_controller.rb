# app/controllers/course_enrollments_controller.rb
class CourseEnrollmentsController < ApplicationController
  before_action :set_course_enrollment, only: [:edit, :update]

  def edit
    @user = User.find_by(uid: params[:user_uid])
    @course_enrollment = @user.course_enrollments.find(params[:id])
  end
  
  
  

  def update
    @course_enrollment = CourseEnrollment.find(params[:id])
    @user = @course_enrollment.user
    
    if @course_enrollment.update(course_enrollment_params)
      # Redirect to the profile page with the user's ID as a query parameter
      redirect_to profiles_path(id: @user.id), notice: 'Course enrollment was successfully updated.'
    else
      render :edit
    end
  end
  
  def new
    # Assuming that you have defined a method to set the user based on the session or params
    @user = User.find_by(uid: params[:user_uid])
    @course_enrollment = @user.course_enrollments.new
  end
  
  def create
    @course_enrollment = CourseEnrollment.new(course_enrollment_params)
    @course_enrollment.user = User.find_by(uid: params[:user_uid])
  
    if @course_enrollment.save
      redirect_to profiles_path(id: @course_enrollment.user.uid), notice: 'Course enrollment was successfully created.'
    else
      redirect_to root_path, notice: "Create course enrollment failed."
    end
  end
  

  
  private

  def set_course_enrollment
    @course_enrollment = CourseEnrollment.find(params[:id])
  end

  def course_enrollment_params
    params.require(:course_enrollment).permit(:grade, :year, :course_id)
  end
end
