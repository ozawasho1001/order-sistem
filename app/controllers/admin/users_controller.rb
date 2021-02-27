class Admin::UsersController < ApplicationController
 
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
    params.require(:user).permit(:name, :mail, :password)
  end
end