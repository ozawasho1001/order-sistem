class Admin::PaymentsController < ApplicationController
  layout "admin"
  
  def new
    @payment = Payment.new
  end
  
  def index
    @payment = Payment.new(user_id: params[:user_id])
    redirect_to "/admin/topics"
  end
end
