class AddGoalToFactions < ActiveRecord::Migration[5.2]
  def change
    add_column :factions, :goal, :text
  end
end
