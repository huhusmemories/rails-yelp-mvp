class ReviewsController < ApplicationController
  before_action :set_restaurant
  def new
    # raise
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.content = "Boring"
    # raise
    # How is this line defining th restaurant?
    @review.restaurant = @restaurant
    # raise
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
