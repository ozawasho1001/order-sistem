class Admin::CuisinesController < ApplicationController
  before_action :require_permission
  layout "admin"
  
  def new
    @cuisine = Cuisine.new
  end
  
  def create
    @cuisine = current_user.cuisines.new(cuisine_params)
    
    if @cuisine.save
      redirect_to admin_cuisines_path, succes: "投稿に成功しました。"
    else
      flash.now[:danger] = "投稿に失敗しました。"
      render :new
    end
  end
  
  def index
    @cuisines = Cuisine.all
  end
  
  private
  def cuisine_params
    params.require(:cuisine).permit(:name, :price, :text, :image)
  end
end
