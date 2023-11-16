class SessionsController < ApplicationController

  def new
  end
    
  def create
    user = User.find_by(email: params[:user][:email])
    if user.present? && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to courses_path(id: user.id), notice: "Successfully Logged In!"
      # redirect_to user_index_path(id: user.id), notice: "Successfully Logged In!"
    else
      flash[:alert] = "Invalid Email or Password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged Out"
  end

end
