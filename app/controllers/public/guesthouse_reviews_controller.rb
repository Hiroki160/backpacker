class Public::GuesthouseReviewsController < ApplicationController
  def index
  end

  def create
  end

  def new
    @guesthouse_review = GuesthouseReview.new
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
  end

end
