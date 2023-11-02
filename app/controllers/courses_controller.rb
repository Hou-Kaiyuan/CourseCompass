class CoursesController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @course = Course.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @courses = Course.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @course = Course.create!(movie_params)
    flash[:notice] = "#{@course.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @course = Course.find params[:id]
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes!(movie_params)
    flash[:notice] = "#{@course.title} was successfully updated."
    redirect_to movie_path(@course)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Course '#{@course.title}' deleted."
    redirect_to movies_path
  end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def movie_params
    params.require(:course).permit(:title, :rating, :description, :release_date)
  end
end
