class Public::RestaurantAppliesController < ApplicationController
  def create
    @restaurant_apply = current_customer.restaurant_applies.create(restaurant_community_id: apply_params[:restaurant_community_id])
    @restaurant_apply.customer_id = current_customer.id
    redirect_to restaurant_community_restaurant_apply_path(apply_params[:restaurante_community_id], @restaurant_apply.id), notice: "加入申請しました"
  end

  def destroy
  end

  def show
  end
end
