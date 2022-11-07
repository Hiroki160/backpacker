class Admin::GuesthousesController < ApplicationController
  def index
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @guesthouses = Guesthouse.where(country_id: @country.id).page(params[:page])
    else
      @guesthouses = Guesthouse.all
    end

  end

  # def new
  # end

  def show
  end

  def create
  end

  def destroy
    @guesthouse = Guesthouse.find(params[:id])
    @guesthouse.destroy
    redirect_to admin_country_guesthouses_path(country_id: @guesthouse[:country_id])
  end

end
