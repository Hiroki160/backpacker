class Public::GuesthouseCommentsController < ApplicationController

  def index
    @guesthouse_comment = GuesthouseComment.new
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_review = GuesthouseReview.find(params[:guesthouse_review_id])
    @guesthouse_comments = @guesthouse_review.guesthouse_comments
  end

  def create
    @guesthouse_review = GuesthouseReview.find(params[:guesthouse_review_id])
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_comment = @guesthouse_review.guesthouse_comments.new(comment_params)
    @guesthouse_comment.customer_id = current_customer.id
    if @guesthouse_comment.save
      redirect_to guesthouse_guesthouse_review_guesthouse_comments_path(@guesthouse, @guesthouse_review)
    else
      @guesthouse_comments = @guesthouse_review.guesthouse_comments
      render :index
    end
  end

  def destroy
    @guesthouse_review = GuesthouseReview.find(params[:guesthouse_review_id])
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_comment = @guesthouse_review.guesthouse_comments.find(params[:id])
    # @guesthouse_comment.customer_id = current_customer.id
    @guesthouse_comment.destroy
    redirect_to guesthouse_guesthouse_review_guesthouse_comments_path(@guesthouse, @guesthouse_review)
  end

  private

  def comment_params
    params.require(:guesthouse_comment).permit(:content)
  end
end
