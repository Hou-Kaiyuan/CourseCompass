class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # before_action :require_login
  # helper_method :current_user

  # def require_login
  #   redirect_to new_session_path unless session.include? :uid
  # end

  # def current_user
  #   @current_user ||= User.find(session[:uid]) if session[:uid]
  # end

end