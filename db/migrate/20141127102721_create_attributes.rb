class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.integer :value
      t.string :icon

      t.timestamps
    end
  end
end
