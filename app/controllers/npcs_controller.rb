class NpcsController < ApplicationController
  def create
    @faction = Faction.find(params[:faction_id])
    @npc = @faction.npcs.create(npc_params)
    redirect_to faction_path(@faction)
  end

  def destroy
    @faction = Faction.find(params[:faction_id])
    @npc = @faction.npcs.destroy(npc_params)
    @npc.destroy
    redirect_to faction_path(@faction), status: 303
  end

  private
    def npc_params
      params.require(:npc).permit(:name, :race, :characterclass, :description)
    end
end
