class Admin::OrdersController < ApplicationController
  before_action :require_permission
  layout "admin"
  
  def index
    @order = Order.all
  end
  
  def delete
    @order = Order.find_by(id: params[:id])
    @order.destroy
    redirect_to admin_order_index_path
  end
end
