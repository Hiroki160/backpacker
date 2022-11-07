class Admin::RestaurantsController < ApplicationController
  def index
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @restaurants = Restaurant.where(country_id: @country.id).page(params[:page])
    else
      @restaurants = Restaurant.page(params[:page])
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_reviews = RestaurantReview.where(restaurant_id: @restaurant.id).page(params[:page])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to admin_country_restaurants_path(country_id: @restaurant[:country_id])
  end
  
end
