class Public::GuesthouseAppliesController < ApplicationController
  def create
    @guesthouse_apply = current_customer.guesthouse_applies.create(guesthouse_community_id: apply_params[:guesthouse_community_id])
    @guesthouse_apply.customer_id = current_customer.id
    redirect_to guesthouse_community_guesthouse_apply_path(apply_params[:guesthouse_community_id], @guesthouse_apply.id), notice: "加入申請しました"
  end

  def show
    @customer = current_customer
    @guesthouse_applies = @customer.guesthouse_applies
    # if params[:guesthouse_apply][:status] == "accept"
    #   @guesthouse_apply.status = 0
    # elsif params[:guesthouse_apply][:status] == "decline"
    #   @guesthouse_apply.status = 1
    # end
  end

  def update
    apply = GuesthouseApply.find(params[:id])
    apply.update(status: params[:guesthouse_apply][:status])
    pp '----------'
    pp apply
    redirect_to guesthouse_community_path(apply.guesthouse_community.id), notice: "更新しました！"
    # redirect_to guesthouse_community_guesthouse_apply_path(apply.guesthouse_community_id, apply.id)
  end

  def destroy
  end

  private

  def apply_params
    params.permit(:guesthouse_community_id)
  end

end
