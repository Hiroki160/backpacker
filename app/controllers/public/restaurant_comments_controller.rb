class Public::RestaurantCommentsController < ApplicationController
  def create
    @restaurant_review = RestaurantReview.find(params[:restaurant_review_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_comment = @restaurant_review.restaurant_comments.new(comment_params)
    @restaurant_comment.customer_id = current_customer.id
    if @restaurant_comment.save
      redirect_to restaurant_restaurant_review_restaurant_comments_path(@restaurant, @restaurant_review)
    else
      render 'restaurants/show'
    end
  end

  def destroy
  end

  def index
  end
end
