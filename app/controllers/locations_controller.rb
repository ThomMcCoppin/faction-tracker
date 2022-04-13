class LocationsController < ApplicationController
  def create
    @faction = Faction.find(params[:faction_id])
    @location = @faction.locations.create(location_params)
    redirect_to faction_path(@faction)
  end

  def destroy
    @faction = Faction.find(params[:faction_id])
    @location = @faction.locations.destroy(location_params)
    @location.destroy
    redirect_to faction_path(@faction), status: 303
  end

  private
    def location_params
      params.require(:location).permit(:name, :position, :purpose, :secret)
    end
end
