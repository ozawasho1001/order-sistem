class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
  
  def require_permission
    unless current_user.admin
      redirect_to root_path, alert: 'ここから先は管理者限定です！'
    end
  end
end
