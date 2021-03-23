class Admin::OrdersController < ApplicationController
  before_action :require_permission
  layout "admin"
  
  def index
    @order = Order.all
  end
end
