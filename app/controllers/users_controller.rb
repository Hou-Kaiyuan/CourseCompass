class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :index]

  def show
    id = params[:id]
    @user = User.find(id)
    flash[:notice] = "Welcome #{@user.email}!"
  end

  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:error] = "Error- please try to create an account again."
      redirect_to new_user_path
    end
  end

  private 
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
