class Admin::UsersController < ApplicationController
  before_action :require_permission
  layout "admin"
 
  def new
    @user = User.new
  end
  
  def create
     @user = User.new(user_params)
    if @user.save
      redirect_to admin_topics_path, success: '登録が完了しました'
    else
      flash.now[:danger] = '登録失敗です'
      render :new
    end
  end
  
  def index
    @user = User.all
  end
  
  def edit
  end
  
  def destroy
    log_out
    redirect_to logout_path, info: "ログアウトしました。"
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :admin)
  end
  
  def admin_logged_in_user
    if !admin_logged_in?
      redirect_to admin_login_url
    end
  end
end