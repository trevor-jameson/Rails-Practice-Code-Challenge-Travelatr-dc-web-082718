class BloggersController < ApplicationController

  before_action(:finder, {only: [:edit, :update, :show, :destroy]})

  def show
    #@blogger = Blogger.find(params[:id])
  end

  def new
    @blogger = Blogger.new
  end

  def index
    @bloggers = Blogger.all
  end

  def create
    @blogger = Blogger.create(blogger_params)
    if @blogger.errors
      render :new
    else
      redirect_to @blogger
    end
  end

  def edit

  end

private

  def blogger_params
    params.require(:blogger).permit(:name, :age, :bio)
  end

  def finder
    @blogger = Blogger.find(params[:id])
  end



end
