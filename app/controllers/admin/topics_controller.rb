class Admin::TopicsController < ApplicationController
  before_action :require_permission
  layout "admin"
  
  def index
  end
  
end
