class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    raise
  end
end
