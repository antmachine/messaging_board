class PostController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_show_path_url
    else
      render 'edit'
    end
  end

  def edit
    render
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
    render
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
