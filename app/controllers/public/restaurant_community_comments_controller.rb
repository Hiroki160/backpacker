class Public::RestaurantCommunityCommentsController < ApplicationController
  def index
    @restaurant_community_comment = RestaurantCommunityComment.new
    @restaurant_community = RestaurantCommunity.find(params[:restaurant_community_id])
    @restaurant_community_comments =  @restaurant_community.restaurant_community_comments
  end

  def destroy
    @restaurant_community_comment = RestaurantCommunityComment.find(params[:id])
    @restaurant_community_comment.destroy
    @restaurant_community = RestaurantCommunity.find(params[:restaurant_community_id])
    redirect_to restaurant_community_restaurant_community_comments_path(@restaurant_community), notice: "削除しました"
  end

  def create
    @restaurant_community = RestaurantCommunity.find(params[:restaurant_community_id])
    @restaurant_community_comment = RestaurantCommunityComment.new(community_comment_params)
    @restaurant_community_comment.customer_id = current_customer.id
    @restaurant_community_comment.restaurant_community_id = params[:restaurant_community_id]
    if @restaurant_community_comment.save
      redirect_to restaurant_community_restaurant_community_comments_path(@restaurant_community), notice: "投稿しました！"
    else
      render :index
    end
  end

  private

  def community_comment_params
    params.require(:restaurant_community_comment).permit(:customer_id, :restaurant_community_id, :body)
  end
end
