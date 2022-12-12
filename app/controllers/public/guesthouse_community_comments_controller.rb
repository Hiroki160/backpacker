class Public::GuesthouseCommunityCommentsController < ApplicationController
  def index
    @guesthouse_community_comment = GuesthouseCommunityComment.new
    @guesthouse_community = GuesthouseCommunity.find(params[:guesthouse_community_id])
    @guesthouse_community_comments = @guesthouse_community.guesthouse_community_comments
  end

  def destroy
    @guesthouse_community_comment = GuesthouseCommunityComment.find(params[:id])
    @guesthouse_community_comment.destroy
    @guesthouse_community = GuesthouseCommunity.find(params[:guesthouse_community_id])
    redirect_to guesthouse_community_guesthouse_community_comments_path(@guesthouse_community), notice: "削除しました"
  end

  def create
    @guesthouse_community = GuesthouseCommunity.find(params[:guesthouse_community_id])
    @guesthouse_community_comment = GuesthouseCommunityComment.new(community_comment_params)
    @guesthouse_community_comment.customer_id = current_customer.id
    @guesthouse_community_comment.guesthouse_community_id = params[:guesthouse_community_id]
    if @guesthouse_community_comment.save
      redirect_to guesthouse_community_guesthouse_community_comments_path(@guesthouse_community), notice: "投稿しました！"
    else
      @guesthouse_community_comments = @guesthouse_community.guesthouse_community_comments.all
      render :index
    end
  end

  private

  def community_comment_params
    params.require(:guesthouse_community_comment).permit(:customer_id, :guesthouse_community_id, :body)
  end

end
