class ApplicationController < ActionController::Base

  before_filter :authenticate_user!

  protect_from_forgery

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user!
    if current_user.nil?
      redirect_to sessions_path, :alert => "You must first log in to access this page"
    end
  end

  helper_method :current_user, :authenticate_user!
end
