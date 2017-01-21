class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to @post, success: "Yes!"
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to post, success: "Article created!"
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: "Awn, article destroyed"
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
