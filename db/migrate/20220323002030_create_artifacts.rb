class CreateArtifacts < ActiveRecord::Migration[5.2]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.boolean :magic
      t.text :description
      t.text :effects
      t.references :faction, foreign_key: true

      t.timestamps
    end
  end
end
