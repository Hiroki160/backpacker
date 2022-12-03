class Public::ActivityCommunitiesController < ApplicationController

  def index
    @activity = Activity.find(params[:activity_id])
    @activity_communities = @activity.activity_communities.all
  end

  def create
    @activity_community = ActivityCommunity.new(community_params)
    @activity_community.customer_id = current_customer.id
    @activity_community.activity_id = params[:activity_id]
    @activity = Activity.find(params[:activity_id])
    if @activity_community.save
      redirect_to activity_customer_activity_community_path(@activity, @activity_community.customer_id, @activity_community.id)
    else
      render :new
    end
  end

  def show
    @activity_communities = ActivityCommunity.where(customer_id: current_customer.id)
    @customer = Customer.find(current_customer.id)
    @activity_apply = ActivityApply.new
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def new
    @activity_community = ActivityCommunity.new
    @activity = Activity.find(params[:activity_id])
  end

  private

  def community_params
     params.require(:activity_community).permit(:customer_id, :activity_id, :body, :title, :start_date, :end_date)
  end
end
