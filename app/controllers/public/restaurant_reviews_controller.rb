class Public::RestaurantReviewsController < ApplicationController
  def index
  end

  def create
    # binding.pry
    @restaurant_review = RestaurantReview.new(review_params)
    @restaurant_review.customer_id = current_customer.id
    @restaurant_review.restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @restaurant_review.save
      redirect_to restaurant_path(@restaurant)
    else
      # @restaurant = Restaurant.find(params[:restaurant_review][:restaurant_id])
      render :index
    end
  end

  def new
    @restaurant_review = RestaurantReview.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  private

  def review_params
    params.require(:restaurant_review).permit(:restaurant_score, :restaurant_price, :restaurant_content, :restaurant_id, :image)
  end

end
