class Public::RestaurantCommentsController < ApplicationController
  def create
    @restaurant_review = RestaurantReview.find(params[:restaurant_review_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_comment = @restaurant_review.restaurant_comments.new(comment_params)
    @restaurant_comment.customer_id = current_customer.id
    if @restaurant_comment.save
      redirect_to restaurant_restaurant_review_restaurant_comments_path(@restaurant, @restaurant_review)
    else
      @restaurant_comments = @restaurant_review.restaurant_comments.all
      render :index
    end
  end

  def destroy
    @restaurant_review = RestaurantReview.find(params[:restaurant_review_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_comment = @restaurant_review.restaurant_comments.find(params[:id])
    @restaurant_comment.destroy
    redirect_to restaurant_restaurant_review_restaurant_comments_path(@restaurant, @restaurant_review)
  end

  def index
    @restaurant_comment = RestaurantComment.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_review = RestaurantReview.find(params[:restaurant_review_id])
    @restaurant_comments = @restaurant_review.restaurant_comments
  end

  private

  def comment_params
    params.require(:restaurant_comment).permit(:content)
  end

end
