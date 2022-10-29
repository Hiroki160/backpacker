class Public::ActivitiesController < ApplicationController
  def index
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
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :address, :country_id, :customer_id, :image)
  end
end
