class Public::RestaurantAppliesController < ApplicationController
  def create
    @restaurant_apply = current_customer.restaurant_applies.create(restaurant_community_id: apply_params[:restaurant_community_id])
    @restaurant_apply.customer_id = current_customer.id
    redirect_to restaurant_community_restaurant_apply_path(apply_params[:restaurant_community_id], @restaurant_apply.id), notice: "加入申請しました"
  end

  def destroy
  end

  def update
    apply = RestaurantApply.find(params[:id])
    apply.update(status: params[:restaurant_apply][:status])
    redirect_to restaurant_community_path(apply.restaurant_community.id), notice: "更新しました！"
  end

  def show
    @customer = current_customer
    @restaurant_applies = @customer.restaurant_applies
  end

  private

  def apply_params
    params.permit(:restaurant_community_id)
  end

end
