class Public::CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def search
    redirect_to country_path(params[:country_id])
  end

  def show
    @country = Country.find(params[:id])
  end

end
