class Public::ActivityReviewsController < ApplicationController
  def index
  end

  def create
    @activity_review = ActivityReview.new(review_params)
    @activity_review.customer_id = current_customer.id
    @activity_review.activity_id = params[:activity_id]
    @activity = Activity.find(params[:activity_id])
    if @activity_review.save
      redirect_to activity_path(@activity)
    else
      @activity = Activity.find(params[:activity_review][:activity_id])
      render :index
    end
  end

  def new
    @activity_review = ActivityReview.new
    @activity = Activity.find(params[:activity_id])
  end

  def edit
    @activity_review = ActivityReview.find(params[:id])
    @activity = Activity.find(params[:activity_id])
  end

  def update
    @activity_review = ActivityReview.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    if @activity_review.update(review_params)
      flash[:notice] = "更新しました"
      redirect_to activity_path(id: @activity.id)
    else
      render :edit
    end
  end

  def destroy
    @activity_review = ActivityReview.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @activity_review.destroy
    redirect_to activity_path(id: @activity.id)
  end

  private

  def review_params
    params.require(:activity_review).permit(:activity_score, :activity_price, :activity_content, :activity_id, :image)
  end

end
