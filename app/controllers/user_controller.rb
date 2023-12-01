class UserController < ApplicationController
  # before_action :set_user, only: [:recommendations]

  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  def recommendations
    @user = User.find(params[:id])
    top_n_courses = params[:recommendation_count] || 5
    @recommended_courses_with_gpa = @user.recommend_courses(5) # or however many courses you want to recommend


    # Render the view with recommended courses
    # Assuming you have a corresponding view at app/views/user/recommendations.html.erb
    render 'recommendations'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
