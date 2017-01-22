class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, success: "Article updated!"
    else
      render 'edit'
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to @post, success: "Article created!"
    else
      render 'new'
    end
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
      params.require(:post).permit(:title, :content, :slug)
    end
end
