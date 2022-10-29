class Public::RestaurantsController < ApplicationController
  def index
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @restaurants = Restaurant.where(country_id: @country.id).page(params[:page])
    else
      @restaurants = Restaurant.page(params[:page])
    end
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
    @restaurant = Restaurant.find(params[:id])
    @restaurant_reviews = RestaurantReview.where(restaurant_id: @restaurant.id).page(params[:page])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :country_id, :customer_id)
  end
end
