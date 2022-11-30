class Public::RestaurantCommunitiesController < ApplicationController
  
  def new
    @restaurant_community = RestaurantCommunity.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_communities = @restaurant.restaurant_communities.all
  end

  def create
    @restaurant_community = RestaurantCommunity.new(community_params)
    @restaurant_community.customer_id = current_customer.id
    @restaurant_community.restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @restaurant_community.save
      redirect_to restaurant_customer_restaurant_community_path(@restaurant, @restaurant_community.customer_id, @restaurant_community.id)
    else
      render :new
    end
  end

  def show
    @restaurant_communities = RestaurantCommunity.where(customer_id: current_customer.id)
    @customer = Customer.find(current_customer.id)
    @restaurant_apply = RestaurantApply.new
  end

  def destroy
  end

  def edit
  end

  def update
  end
  
  private

  def community_params
    params.require(:restaurant_community).permit(:customer_id, :restaurant_id, :body, :title, :start_date, :end_date)
  end

end
