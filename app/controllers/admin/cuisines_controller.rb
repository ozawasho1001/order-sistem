class Admin::CuisinesController < ApplicationController
  
  def new
    @cuisine = Cuisine.new
  end
end
