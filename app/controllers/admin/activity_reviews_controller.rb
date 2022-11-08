class Admin::ActivityReviewsController < ApplicationController
  
  def index
  end

  def destroy
    @activity_review = ActivityReview.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @activity_review.destroy
    redirect_to admin_activity_path(id: @activity.id) 
  end
end
