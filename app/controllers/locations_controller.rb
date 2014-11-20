class LocationsController < ApplicationController

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    @location.save
    redirect_to '/'
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to '/'
  end

end

def location_params
  params.require(:location).permit(:name)
end
