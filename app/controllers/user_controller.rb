class CoursesController < ApplicationController
  before_action :set_user, only: [:recommendations]

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  # GET /users/:id/recommendations
  def recommendations
    @recommended_courses = @user.recommend_courses
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
