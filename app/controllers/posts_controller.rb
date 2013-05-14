class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    redirect_to(root_path)
  end

  def show
   @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to(@post)
  end

  def destroy
    Post.delete(params[:id])
    redirect_to(root_path)
  end
end
