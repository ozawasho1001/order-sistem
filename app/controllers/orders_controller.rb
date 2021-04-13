class OrdersController < ApplicationController
  def new
    @cuisines = Cuisine.all
    @orders = Order.new
  end

  def create

    # Cuisine tableのレコードをid で取得するし変数に代入する。
    cuisine = Cuisine.find(cuisine_id)
    # cuisine = Cuisine.find_by(id: cuisine_id) # これなら存在しないID指定してもエラーにはならない。

    # Cusine.find で見つからない場合は ActiveRecord::RecordNotFound という例外が発生して処理終了する。
    # rails の場合、AcitveReocrd::RecordNotFound という例外が発生した場合、「404（Not Found）ページを表示する」という挙動をするのがデフォ。

    # 商品の内容が null だったらredirect させる。
    # if cuisine == 'null'
    # if cuisine.nil? || cuisine.blank?
    # unless cuisine.present?
    #   redirect_to new_order_path, danger: 'オーダーに失敗しました'
    #   return
    # end

    # # Orderモデルのインスタンスを生成する。
    # order = Order.new(
    #   user_id: current_user.id,
    #   cuisine_id: cuisine_id,
    #   quantity: 1,
    #   cuisine_name: cuisine.name,
    #   cuisine_price: cuisine.price
    # )

    # 「誰からの注文」を実装上表現してOrderのインスタンスを生成する。
    order = current_user.orders.build(
      # cuisine_id: cuisine_id,
      quantity: 1,
      cuisine_name: cuisine.name,
      cuisine_price: cuisine.price
    )

    # #  Orderモデルのuser_id カラムにcurrent_user.id を入れる。
    # order.user_id = current_user.id

    # #  Orderモデルのcuisine_id カラムにparams で取得した商品id を入れる。
    # order.cuisine_id = cuisine_id

    # #  Orderモデルのquantity カラムに数量を代入する。
    # order.quantity = 1

    # # Orderモデルのcuisine_name カラムに商品の名前を代入する。
    # order.cuisine_name  = cuisine.name

    # # Orderモデルのcuisine_price カラムに商品の値段を代入する。
    # order.cuisine_price  = cuisine.price

    # order をsave させる。
    if order.save
      # save できたら、リダイレクトさせる。
      redirect_to '/orders/new', success: '商品をオーダーしました'
    else
      redirect_to new_order_path, danger: 'オーダーに失敗しました'
    end
  end

  private

  def cuisine_id
    params[:id]
  end
end

