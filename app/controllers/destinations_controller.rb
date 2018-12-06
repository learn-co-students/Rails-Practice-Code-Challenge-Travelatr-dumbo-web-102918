class DestinationsController < ApplicationController
  before_action :get_destination, only: [:edit, :update, :destroy]

  def index
   @destinations = Destination.all
  end

  def show
  @destination =Destination.find(params[:id])
  end

  def edit

  end

  def update
  end

  def new
    @destination = Destination.new
    @bloggers = Blogger.all 
  end

  def create
    @destination = Destination.create(destination_params)
    redirect_to destinations_path
  end

  def destroy
    @destination.destroy
    redirect_to destinations_path
  end

 private

 def get_destination
   @destination = Destination.find(params[:id])
 end

 def destination_params
   params.require(:destination).permit(:name, :country)
 end

end
