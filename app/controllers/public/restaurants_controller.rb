class Public::RestaurantsController < ApplicationController
  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.customer_id = current_customer.id
    if @restaurant.save
      redirect_to new_restaurant_restaurant_review_path(@restaurant)
    else
      render:new
    end
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :country_id, :customer_id)
  end
end
