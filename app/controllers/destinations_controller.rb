class DestinationsController < ApplicationController

  before_action(:finder, {only: [:edit, :update, :show, :destroy]})

  def show
  end

  def new
    @destination = Destination.new
  end

  def index
  end

  def edit
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :country)
  end

  def finder
    @destination = Destination.find(params[:id])
  end


end
