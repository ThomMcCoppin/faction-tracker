class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :position
      t.text :purpose
      t.boolean :secret

      t.timestamps
    end
  end
end
