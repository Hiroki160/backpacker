class Public::GuesthousesController < ApplicationController
  def index
    # @guesthouse_review = GuesthouseReview.find(params[:id])
    # @guesthouses = Guesthouse.all
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @guesthouses = Guesthouse.where(country_id: @country.id).page(params[:page])
      # @guesthouses = @country.guesthouses.all
    else
      @guesthouses = Guesthouse.all
      # @guesthouses = Guesthouse.all
      # @guesthouse_review = GuesthouseReview.find(params[:id])
    end
  end

  def new
    @guesthouse = Guesthouse.new
  end

  def create
    @guesthouse = Guesthouse.new(guesthouse_params)
    @guesthouse.customer_id = current_customer.id
    if @guesthouse.save
      redirect_to new_guesthouse_guesthouse_review_path(@guesthouse)
    else
      render :new
    end
    # 後からレビュー画面のパスに設定
  end

  def show
    # binding.pry
    @guesthouse = Guesthouse.find(params[:id])
    # @guesthouse_reviews = GuesthouseReview.where(guesthouse_id: @guesthouse.id).page(params[:page])
    @guesthouse_reviews = params[:guesthouse_tag_id].present? ? GuesthouseTag.find(params[:guesthouse_tag_id]).guesthouse_reviews.where(guesthouse_id: @guesthouse).page(params[:page]) : GuesthouseReview.where(guesthouse_id: @guesthouse.id).page(params[:page])
    # @guesthouse_comments = @guesthouse_reviews.guesthouse_comments
    # @guesthouse_review = GuesthouseReview.find(params[:guesthouse_review_id])
    # binding.pry
    # @guesthouse_reviews = @guesthouse.guesthouse_reviews
    # @guesthouse_reviews.page[params[:page]]
  end

  private

  def guesthouse_params
    params.require(:guesthouse).permit(:name, :address, :latitude, :longitude, :country_id, :customer_id, :image)
  end

end