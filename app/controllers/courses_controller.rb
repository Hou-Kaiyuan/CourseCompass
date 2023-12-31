class CoursesController < ApplicationController

  def show
    id = params[:id]
    @course = Course.find(id) 
   
  end

  def index
    if params[:search].present?
      @courses = Course.where("course_id LIKE ? OR course_title LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").paginate(page: params[:page], per_page: 10)
    else
      @courses = Course.paginate(page: params[:page], per_page: 10)
    end
  end
  

  def new
    @course = Course.new 
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "#{@course.course_title} was successfully created."
      redirect_to courses_path
    else
      flash[:alert] = "Course creation was unsuccessful. Please try again."
      render :new
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
