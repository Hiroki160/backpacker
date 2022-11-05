class Admin::CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to admin_customers_path
  end
end
