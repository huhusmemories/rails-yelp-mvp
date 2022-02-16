class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # raise
  end

  def show
    set_restaurant
    # raise
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
