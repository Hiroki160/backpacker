class Public::GuesthousesController < ApplicationController
  def index
    # @guesthouse_review = GuesthouseReview.find(params[:id])
    # @guesthouses = Guesthouse.all
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @guesthouses = @country.guesthouses.all
    else
      @guesthouses = Guesthouse.all
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
    @guesthouse = Guesthouse.find(params[:id])
    @guesthouse_reviews = @guesthouse.guesthouse_reviews
  end

  private

  def guesthouse_params
    params.require(:guesthouse).permit(:name, :address, :country_id, :customer_id, :image)
  end

end
