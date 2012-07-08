class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.references :item
      t.references :container
      t.references :user

      t.timestamps
    end
    add_index :placements, :item_id
    add_index :placements, :container_id
    add_index :placements, :user_id
  end
end
