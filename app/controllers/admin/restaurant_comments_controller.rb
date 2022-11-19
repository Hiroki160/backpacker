class Admin::RestaurantCommentsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_review = RestaurantReview.find(params[:restaurant_review_id])
    @restaurant_comments = @restaurant_review.restaurant_comments
  end

  def destroy
    @restaurant_review = RestaurantReview.find(params[:restaurant_review_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_comment = @restaurant_review.restaurant_comments.find(params[:id])
    @restaurant_comment.destroy
    redirect_to admin_restaurant_restaurant_review_restaurant_comments_path(@restaurant, @restaurant_review)
  end
end
