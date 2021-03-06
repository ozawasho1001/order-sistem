class Admin::UsersController < Admin::BaseController
  before_action :require_permission

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
    @user = User.all
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    user = User.find_by(id: params[:id])
    user.assign_attributes(name: params[:name], email: params[:email])
    user.save
    redirect_to admin_users_path
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to admin_users_path
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