class Public::GuesthouseAppliesController < ApplicationController
  def create
    @guesthouse_apply = GuesthouseApply.find(params[:id])
    current_customer.guesthouse_applies.create(guesthouse_community_id: apply_params[:guesthouse_community_id])
    redirect_to guesthouse_community_guesthouse_apply_path(apply_params[:community_id], @guesthouse_apply), notice: "加入申請しました"
  end

  def show
  end

  def destroy
  end
  
  private
  
  def apply_params
    params.permit(:guesthouse_community_id)
  end
end
