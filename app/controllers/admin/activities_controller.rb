class Admin::ActivitiesController < ApplicationController

  def index
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @activities = Activity.where(country_id: @country.id).page(params[:page])
    else
      @activities = Activity.page(params[:page])
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @activity_reviews = ActivityReview.where(activity_id: @activity.id).page(params[:page])
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to admin_country_activities_path(country_id: @activity[:country_id])
  end
end
