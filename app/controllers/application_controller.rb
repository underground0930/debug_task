class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id].present?
  end

  helper_method :current_user

  def require_login
    redirect_to new_session_path, alert: 'ログインしてください' unless current_user
  end
end
