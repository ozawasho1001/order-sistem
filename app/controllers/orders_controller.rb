class OrdersController < ApplicationController
  layout "front"
  
  def new
    @cuisines = Cuisine.all
  end
  
  def create
    cuisine = Cuisine.find(params[:cuisine_id])
    if cuisine == 'null'
      redirect_to orders_new_path, danger: 'オーダーに失敗しました'
    end
    order = Order.new
    order.user_id = current_user.id
    order.cuisine_id = params[:cuisine_id]
    order.quantity = 1
    order.cuisine_name  = cuisine.name
    order.cuisine_price  = cuisine.price
    
    if order.save
      redirect_to '/orders/new', success: '商品をオーダーしました'
    else
      redirect_to orders_new_path, danger: 'オーダーに失敗しました'
    end
  end
end