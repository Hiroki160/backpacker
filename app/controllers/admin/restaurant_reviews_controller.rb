class Admin::RestaurantReviewsController < ApplicationController
  def index
  end

  def update
  end

  def destroy
    @restaurant_review = RestaurantReview.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_review.destroy
    redirect_to admin_restaurant_path(id: @restaurant.id)
  end
end
