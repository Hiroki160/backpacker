class Public::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.customer_id = current_customer
    if @post.save
      tag_list = tag_params[:names].split(/[[:blank:]]+/).select(&:present?)
      @post.save_tags(tag_list)
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:customer_id, :comment_id, :content)
  end
  
  def tag_params
    params.require(:post).permit(:names)
  end
end
