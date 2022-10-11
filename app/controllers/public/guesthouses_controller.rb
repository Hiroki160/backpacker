class Public::GuesthousesController < ApplicationController
  def index
    @guesthouses = Guesthouse.all
  end

  def new
    @guesthouse = Guesthouse.new
  end

  def create
    @guesthouse = Guesthouse.new(guesthouse_params)
    @guesthouse.save
    redirect_to guesthouses_path, flash: { notice: '登録に成功しました' }
    # 後からレビュー画面のパスに設定
  end

  def show
  end

  private

  def guesthouse_params
    params.require(:guesthouse).permit(:name, :address, :country_id, :customer_id)
  end

end
