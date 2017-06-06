class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    User.where(id: session[:user_id]).first if session[:user_id].present?
  end
  helper_method :current_user
end
