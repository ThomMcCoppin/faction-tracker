class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.string :name
      t.string :race
      t.string :characterclass
      t.text :description
      t.references :faction, foreign_key: true

      t.timestamps
    end
  end
end
