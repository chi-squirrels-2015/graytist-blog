class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors
      redirect_to new_post_path(@post)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.attributes = params[:post]
    if @post.save
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    post = Post.find(params[:id])
    redirect_to posts_path
  end
end