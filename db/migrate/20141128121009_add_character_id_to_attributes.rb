class AddCharacterIdToAttributes < ActiveRecord::Migration
  def change
    add_column :attributes, :character_id, :integer
  end
end
