class Public::ActivityCommentsController < ApplicationController

  def create
    @activity_review = ActivityReview.find(params[:activity_review_id])
    @activity = Activity.find(params[:activity_id])
    @activity_comment = @activity_review.activity_comments.new(comment_params)
    @activity_comment.customer_id = current_customer.id
    if @activity_comment.save
      redirect_to activity_activity_review_activity_comments_path(@activity, @activity_review)
    else
      @activity_comments = @activity_review.activity_comments.all
      render :index
    end
  end

  def destroy
    @activity_review = ActivityReview.find(params[:activity_review_id])
    @activity = Activity.find(params[:activity_id])
    @activity_comment = @activity_review.activity_comments.find(params[:id])
    @activity_comment.destroy
    redirect_to activity_activity_review_activity_comments_path(@activity, @activity_review)
  end

  def index
    @activity_comment = ActivityComment.new
    @activity = Activity.find(params[:activity_id])
    @activity_review = ActivityReview.find(params[:activity_review_id])
    @activity_comments = @activity_review.activity_comments
  end

  private

  def comment_params
    params.require(:activity_comment).permit(:content)
  end

end
