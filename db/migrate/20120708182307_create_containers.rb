class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :name
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
