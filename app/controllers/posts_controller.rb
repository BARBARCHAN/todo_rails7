class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:text)
    end
  
end
