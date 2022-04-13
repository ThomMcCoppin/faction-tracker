class FactionsController < ApplicationController
  def index
    @factions = Faction.all
  end

  def show 
    @faction = Faction.find(params[:id])
  end

  def new
    @faction = Faction.new
  end

  def create
    @faction = Faction.new(faction_params)

    if @faction.save
      redirect_to @faction
    else
    end
  end

  def edit
    @faction = Faction.find(params[:id])
  end

  def update
    @faction = Faction.find(params[:id])

    if @faction.update(faction_params)
      redirect_to @faction
    else
      render_error :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @faction = Faction.find(params[:id])
    @faction.destroy

    redirect_to root_path, status: :see_other
  end

  def export
    FactionMailer.faction_export(Faction.all, Player.first).deliver_now
  end

  private
    def faction_params
      params.require(:faction).permit(:title, :description, :alignment, :goal)
    end
end
