class Admin::UsersController < ApplicationController
 before_action :admin_logged_in_user
  def new
    @user = User.new
  end
  
  def create
     @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, success: '登録が完了しました'
    else
      flash.now[:danger] = '登録失敗です'
      render :new
    end
  end
  
  def index
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
  def admin_logged_in_user
    if !admin_logged_in_user
      redirect_to admin_login_url
    end
  end
  
end