class  Admin::OrdersController < Admin::BaseController
  before_action :require_permission

  def index
    @order = Order.all
  end
end
