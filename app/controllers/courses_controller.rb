class CoursesController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @course = Course.find(id) # look up movie by unique ID
    # will render app/views/courses/show.<extension> by default
  end

  def index
    if params[:search].present?
      @courses = Course.where("course_id LIKE ? OR course_title LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").paginate(page: params[:page], per_page: 10)
    else
      @courses = Course.paginate(page: params[:page], per_page: 10)
    end
  end
  

  def new
    @course = Course.new # Initializes a new Course object for the form
  end

  def create
    @course = Course.new(course_params) # Initializes with course_params instead of create! directly
    if @course.save
      flash[:notice] = "#{@course.course_title} was successfully created."
      redirect_to courses_path
    else
      render :new # Render the new form again if the course fails to save
    end
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

  # def destroy
  #   @course = Course.find(params[:id])
  #   @course.destroy
  #   flash[:notice] = "Course '#{@course.course_title}' deleted."
  #   redirect_to courses_path
  # end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def course_params
    params.require(:course).permit(
      :course_id,
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
