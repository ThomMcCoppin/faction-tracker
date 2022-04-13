class CreateFactions < ActiveRecord::Migration[5.2]
  def change
    create_table :factions do |t|
      t.string :title
      t.text :description
      t.string :alignment
      t.text :goal

      t.timestamps
    end
  end
end
