class AddRaceToNpcs < ActiveRecord::Migration[5.2]
  def change
    add_column :npcs, :race, :string
  end
end
