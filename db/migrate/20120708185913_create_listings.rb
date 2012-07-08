class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :item
      t.references :list
      t.references :user
      t.integer :position

      t.timestamps
    end
    add_index :listings, :item_id
    add_index :listings, :list_id
    add_index :listings, :user_id
  end
end
