class CoursesController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @course = Course.find(id) # look up movie by unique ID
    # will render app/views/courses/show.<extension> by default
  end

  def index
    if params[:search].present?
      @courses = Course.where("course_number LIKE ? OR course_title LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @courses = Course.all
    end
  end

  def new
    # default: render 'new' template
  end

  def create
    @course = Course.create!(course_params)
    flash[:notice] = "#{@course.course_title} was successfully created."
    redirect_to courses_path
  end

  def edit
    @course = Course.find params[:id]
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes!(course_params)
    flash[:notice] = "#{@course.course_title} was successfully updated."
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Course '#{@course.course_title}' deleted."
    redirect_to courses_path
  end

  def add_to_enrolled_courses
    @course = Course.find(params[:id])
    # You can replace these with actual values for year and grade
    year = Time.now.year
    grade = 'A'

    if session[:user_id].present?
      CourseEnrollment.add_enrollment(:user_id, @course.course_title, year, grade)
      redirect_to course_path, notice: "Course successfully added to your profile."
    end
  end
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def course_params
    params.require(:course).permit(
      :course_number,
      :course_title,
      :offering_term,
      :midterm,
      :project,
      :instructor,
      :time,
      :days,
      :website
    )
  end
end
