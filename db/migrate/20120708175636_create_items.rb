class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.float :value
      t.date :vintage
      t.text :description

      t.timestamps
    end
  end
end
