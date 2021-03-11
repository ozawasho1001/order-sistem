class Admin::TopicsController < ApplicationController
  layout "admin"
  before_action :require_permission
  
  def index
  end
  
end
