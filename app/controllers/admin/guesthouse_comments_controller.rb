class Admin::GuesthouseCommentsController < ApplicationController
  def index
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_review = GuesthouseReview.find(params[:guesthouse_review_id])
    @guesthouse_comments = @guesthouse_review.guesthouse_comments
  end

  def destroy
    @guesthouse_review = GuesthouseReview.find(params[:guesthouse_review_id])
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_comment = @guesthouse_review.guesthouse_comments.find(params[:id])
    # @guesthouse_comment.customer_id = current_customer.id
    @guesthouse_comment.destroy
    redirect_to admin_guesthouse_guesthouse_review_guesthouse_comments_path(@guesthouse, @guesthouse_review)
  end
end
