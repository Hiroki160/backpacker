class Public::GuesthousesController < ApplicationController
  def index
    # @guesthouses = Guesthouse.all
    if params[:country_id]
      @country = Country.find(params[:country_id])
      @guesthouses = @country.guesthouses.all
    else
      @guesthouses = Guesthouse.all
    end
  end

  def new
    @guesthouse = Guesthouse.new
  end

  def create
    @guesthouse = Guesthouse.new(guesthouse_params)
    @guesthouse.customer_id = current_customer.id
    if @guesthouse.save
      redirect_to guesthouses_path(country_id: guesthouse_params[:country_id]), flash: { notice: '登録に成功しました' }
    else
      render :new
    end
    # 後からレビュー画面のパスに設定
  end

  def show
  end

  private

  def guesthouse_params
    params.require(:guesthouse).permit(:name, :address, :country_id, :customer_id)
  end

end
