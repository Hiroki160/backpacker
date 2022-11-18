class Admin::GuesthouseCommentsController < ApplicationController
  def index
    @guesthouse_comment = GuesthouseComment.new
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_review = GuesthouseReview.find(params[:guesthouse_review_id])
    @guesthouse_comments = @guesthouse_review.guesthouse_comments
  end

  def destroy
  end
end
