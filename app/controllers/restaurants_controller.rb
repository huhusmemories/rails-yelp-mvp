class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # raise
  end

  def show
    set_restaurant
    # raise
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant created"
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
