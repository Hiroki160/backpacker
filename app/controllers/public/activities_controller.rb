class Public::ActivitiesController < ApplicationController
  def index
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @activities = Activity.where(country_id: @country.id).page(params[:page])
    else
      @activities = Activity.page(params[:page])
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.customer_id = current_customer.id
    if @activity.save
      redirect_to new_activity_activity_review_path(@activity)
    else
      render :new
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @activity_reviews = ActivityReview.where(activity_id: @activity.id).page(params[:page])
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :address, :country_id, :customer_id, :image)
  end
end
