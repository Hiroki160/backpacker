class Public::GuesthouseReviewsController < ApplicationController
  def index
  end

  def create
    # binding.pry
    @guesthouse_review = GuesthouseReview.new(review_params)
    @guesthouse_review.customer_id = current_customer.id
    @guesthouse_review.guesthouse_id = params[:guesthouse_id]
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    if @guesthouse_review.save
      redirect_to guesthouse_path(@guesthouse)
    else
      @guesthouse = Guesthouse.find(params[:guesthouse_review][:guesthouse_id])
      # @ramen_shop = RamenShop.find(params[:ramen_shop_id])
      render :index
    end
  end

  def new
    @guesthouse_review = GuesthouseReview.new
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
  end

  private

  def review_params
    params.require(:guesthouse_review).permit(:guesthouse_score, :guesthouse_price, :guesthouse_content, :guesthouse_id)
  end


end
