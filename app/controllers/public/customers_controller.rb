class Public::CustomersController < ApplicationController


  def show
    @customer = Customer.find(params[:id])
    @guesthouse_community = GuesthouseCommunity.where(customer_id:params[:customer_id])
    @guesthouse = Guesthouse.where(customer_id:params[:customer_id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  
  def withdrawal
    @customer = Customer.find(params[:id])
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行しました"
    redirect_to root_path
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:notice] = "更新しました"
      redirect_to customer_path(@customer.id)
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :image, :introduction)
  end
end
