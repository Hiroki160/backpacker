class Admin::GuesthouseReviewsController < ApplicationController
  def index
    @guesthouse = Guesthouse.find(params[:id])
    @guesthouse_reviews = @guesthouse.guesthouse_reviews
  end

  def update
  end

  def destroy
    @guesthouse_review = GuesthouseReview.find(params[:id])
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    @guesthouse_review.destroy
    redirect_to admin_guesthouse_path(id: @guesthouse.id)
  end

end
