class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
  
  # authorize_resource :class => false
  # rescue_from CanCan::AccessDenied do |exceptionš|
  #   # root_urlに飛ばす。
  #   redirect_to users_path
  # end
end
