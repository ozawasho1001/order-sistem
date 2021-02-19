class Admin::UsersController < ApplicationController
  # new.html.erb の View をさがしにいくやつ。
  #
  # /admin/users/new のリクエストを受け付けて結果を返す。
  # ※ 返す結果はデフォルトで Rails によってコントローラ名とアクション名から推測される。
  def new
    # デフォルトで下記を返却する。
    # ※ /admin/users/new は app/views/admin/users/new.html.erb を指していて、
    #   erb のようなHTMLを生成する元ネタとなるものを「template」と呼ぶ。
    # render '/admin/users/new'
    @user = User.new
  end
  
  def create
     @user = User.new(params.require(:user).permit(:name, :mail, :password))
    if @user.save
      redirect_to admin_users_path, success: '登録できました'
    else
      flash.now[:danger] = '登録失敗です'
      render :new
    end
  end
  
  def index
  end
end