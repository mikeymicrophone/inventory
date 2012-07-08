class StoreUserWhoCreatedItem < ActiveRecord::Migration
  def up
    add_column :items, :user_id, :integer
  end

  def down
    remove_column :items, :user_id
  end
end
