class Admin::ActivityCommentsController < ApplicationController
  def index
    @activity = Activity.find(params[:activity_id])
    @activity_review = ActivityReview.find(params[:activity_review_id])
    @activity_comments = @activity_review.activity_comments
  end

  def destroy
    @activity_review = ActivityReview.find(params[:activity_review_id])
    @activity = Activity.find(params[:activity_id])
    @activity_comment = @activity_review.activity_comments.find(params[:id])
    @activity_comment.destroy
    redirect_to admin_activity_activity_review_activity_comments_path(@activity, @activity_review)
  end
end
