class UsersController < ApplicationController
  before_action :set_user, only: [:recommendations]

  def index
    if session[:uid]
      @user = User.find_by(id: session[:uid])
    end
  end

  def recommendations
    @user = User.find(params[:id])
    top_n_courses = params[:recommendation_count] || 5
    @recommended_courses_with_gpa = @user.recommend_courses(top_n_courses) 

    render 'recommendations'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
