class Public::PlacesController < ApplicationController
  def index
    @Countries = Country.all
  end
end
