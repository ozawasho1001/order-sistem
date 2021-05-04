class  Admin::CuisinesController < Admin::BaseController
  before_action :require_permission

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      # .to_json で登録後にjsonのフォーマットでログに表示している。
      Rails.logger.debug "cuisine を登録しました。#{@cuisine.to_json}"
      redirect_to admin_cuisines_path, succes: "投稿に成功しました。"
    else
      Rails.logger.debug "cuisine を登録出来ません。#{@cuisine.to_json}, error: #{@cuisine.errors.full_messages}"
      flash.now[:danger] = "投稿に失敗しました。"
      render :new, status: :bad_request
    end
  end

  def index
    @cuisines = Cuisine.all
  end

  def edit
    @cuisine = Cuisine.find_by(id: params[:id])
  end

  def update
    cuisine = Cuisine.find_by(id: params[:id])
    cuisine.assign_attributes(name: params[:name], price: params[:price], text: params[:text])
    cuisine.save
    redirect_to admin_cuisines_path
  end

  def destroy
    cuisine = Cuisine.find_by(id: params[:id])
    cuisine.destroy
    redirect_to admin_cuisines_path
  end

  private

  def cuisine_params
    params
      .require(:cuisine)
      .permit(
        :name,
        :price,
        :text,
        :image
      )
  end
end