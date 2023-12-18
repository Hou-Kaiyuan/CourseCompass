class RegistrationsController < ApplicationController
  
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:uid] = @user.id
            redirect_to courses_path(id: @user.id), notice: "Account Successfully Created!"
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:uid, :id, :first_name, :last_name, :email, :password, :password_confirmation, :profile_pic, :major)
    end
  end
  