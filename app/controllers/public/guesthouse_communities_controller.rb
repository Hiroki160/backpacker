class Public::GuesthouseCommunitiesController < ApplicationController

  def new
    @guesthouse_community = GuesthouseCommunity.new
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
  end

  def index
     @guesthouse = Guesthouse.find(params[:guesthouse_id])
    # @guesthouse_apply = GuesthouseApply.find(params[:guesthouse_apply_id])
     @gueshouse_communities = @guesthouse.guesthouse_communities.all
  end

  def create
    @guesthouse_community = GuesthouseCommunity.new(community_params)
    @guesthouse_community.customer_id = current_customer.id
    @guesthouse_community.guesthouse_id = params[:guesthouse_id]
    @guesthouse = Guesthouse.find(params[:guesthouse_id])
    if @guesthouse_community.save
      redirect_to guesthouse_customer_guesthouse_community_path(@guesthouse, @guesthouse_community.customer_id, @guesthouse_community.id)
    else
      render :new
    end
  end

  def show
    @guesthouse_communities = GuesthouseCommunity.where(customer_id:params[:customer_id])
    @guesthouse_community = GuesthouseCommunity.where(customer_id:params[:customer_id])
    @guesthouse_applies = @guesthouse_communities.guesthouse_applies
    @customer = Customer.find(params[:customer_id])
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def community_params
    params.require(:guesthouse_community).permit(:customer_id, :guesthouse_id, :body, :title, :start_date, :end_date)
  end
end
