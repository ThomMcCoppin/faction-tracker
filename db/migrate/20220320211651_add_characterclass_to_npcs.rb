class AddCharacterclassToNpcs < ActiveRecord::Migration[5.2]
  def change
    add_column :npcs, :characterclass, :string
  end
end
