class ArtifactsController < ApplicationController
  def create
    @faction = Faction.find(params[:faction_id])
    @artifact = @faction.artifacts.create(artifact_params)
    redirect_to faction_path(@faction)
  end

  def destroy
    @faction = Faction.find(params[:faction_id])
    @artifact = @faction.artiacts.destroy(artifact_params)
    @artifact.destroy
    redirect_to faction_path(@faction), status: 303
  end

  private
    def artifact_params
      params.require(:artifact).permit(:name, :magic, :description, :effects)
    end
end
