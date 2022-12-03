class Public::ActivityAppliesController < ApplicationController
  def create
    @activity_apply = current_customer.activity_applies.create(activity_community_id: apply_params[:activity_community_id])
    @activity_apply.customer_id = current_customer.id
    redirect_to activity_community_activity_apply_path(apply_params[:activity_community_id], @activity_apply.id), notice: "加入申請しました"
  end

  def destroy
  end

  def update
    apply = ActivityApply.find(params[:id])
    apply.update(status: params[:activity_apply][:status])
    redirect_to activity_community_path(apply.activity_community.id), notice: "更新しました！"
  end

  def show
    @customer = current_customer
    @activity_applies = @customer.activity_applies
  end

  private

  def apply_params
    params.permit(:activity_community_id)
  end

end
