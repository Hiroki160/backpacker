class Public::GuesthouseReviewsController < ApplicationController
  def index
    @guesthouse = Guesthouse.find(params[:id])
    @guesthouse_reviews = @guesthouse.guesthouse_reviews
  end

  def show
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

  def edit
    @guesthouse_review = GuesthouseReview.find(params[:id])
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
  end

  def update
    @guesthouse_review = GuesthouseReview.find(params[:id])
    # @guesthouse = Guesthouse.find(params[:id])
    @guesthouse = Guesthouse.find(params[:guesthouse_id]) #paramsをguesthouse_idにする？
    if @guesthouse_review.update(review_params)
      flash[:notice] = "更新しました"
      redirect_to guesthouse_path(id: @guesthouse.id)
    else
      render :edit
    end
  end

  def destroy
    @guesthouse_review = GuesthouseReview.find(params[:id])
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_review.destroy
    redirect_to guesthouse_path(id: @guesthouse.id)
  end

  private

  def review_params
    params.require(:guesthouse_review).permit(:guesthouse_score, :guesthouse_price, :guesthouse_content, :guesthouse_id, :image, guesthouse_tag_ids: [])
  end


end
