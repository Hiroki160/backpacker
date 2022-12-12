class Public::ActivityCommunityCommentsController < ApplicationController
  def create
    @activity_community = ActivityCommunity.find(params[:activity_community_id])
    @activity_community_comment = ActivityCommunityComment.new(community_comment_params)
    @activity_community_comment.customer_id = current_customer.id
    @activity_community_comment.activity_community_id = params[:activity_community_id]
    if @activity_community_comment.save
      redirect_to activity_community_activity_community_comments_path(@activity_community), notice: "投稿しました！"
    else
      @activity_community_comments = @activity_community.activity_community_comments
      render :index
    end
  end

  def destroy
    @activity_community_comment = ActivityCommunityComment.find(params[:id])
    @activity_community_comment.destroy
    @activity_community = ActivityCommunity.find(params[:activity_community_id])
    redirect_to activity_community_activity_community_comments_path(@activity_community), notice: "削除しました"
  end

  def index
    @activity_community_comment = ActivityCommunityComment.new
    @activity_community = ActivityCommunity.find(params[:activity_community_id])
    @activity_community_comments = @activity_community.activity_community_comments
  end

  private

  def community_comment_params
    params.require(:activity_community_comment).permit(:customer_id, :activity_community_id, :body)
  end

end
