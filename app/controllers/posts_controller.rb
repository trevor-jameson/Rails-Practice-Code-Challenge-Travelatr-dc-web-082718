class PostsController < ApplicationController

    before_action(:finder, {only: [:edit, :update, :show, :destroy]})

  def show
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def edit
  end

  def update
    @post = Post.update(post_params)
    redirect_to @post
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end

    def finder
      @post = Post.find(params[:id])
    end
end
