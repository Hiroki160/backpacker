class Public::ActivityCommunitiesController < ApplicationController

  def index
    @activity = Activity.find(params[:activity_id])
    @activity_communities = @activity.activity_communities.all
  end

  def create
  end

  def show
    @activity_communities = ActivityCommunity.where(customer_id: current_customer.id)
    @customer = Customer.find(current_customer.id)
    @activity_apply = RestaurantApply.new
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def new
  end
end
