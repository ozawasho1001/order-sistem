class CuisinesController < ApplicationController
  layout "front"
  
  def index
    @cuisines = Cuisine.all
  end
end
