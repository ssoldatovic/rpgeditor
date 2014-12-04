class CreateAttribs < ActiveRecord::Migration
  def change
    create_table :attribs do |t|
      t.string :name
      t.integer :value
      t.string :icon

      t.timestamps
    end
  end
end
