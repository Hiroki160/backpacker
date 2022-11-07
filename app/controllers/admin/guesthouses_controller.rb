class Admin::GuesthousesController < ApplicationController
  def index
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @guesthouses = Guesthouse.where(country_id: @country.id).page(params[:page])
    else
      @guesthouses = Guesthouse.all
    end
  end


  def show
    @guesthouse = Guesthouse.find(params[:id])
    @guesthouse_reviews = GuesthouseReview.where(guesthouse_id: @guesthouse.id).page(params[:page])
  end


  def destroy
    @guesthouse = Guesthouse.find(params[:id])
    @guesthouse.destroy
    redirect_to admin_country_guesthouses_path(country_id: @guesthouse[:country_id])
  end

end
