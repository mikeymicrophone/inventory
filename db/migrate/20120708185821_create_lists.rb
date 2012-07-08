class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :lists, :user_id
  end
end
