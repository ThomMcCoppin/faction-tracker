class AddFactionToArtifacts < ActiveRecord::Migration[5.2]
  def change
    add_reference :artifacts, :faction, foreign_key: true
  end
end
