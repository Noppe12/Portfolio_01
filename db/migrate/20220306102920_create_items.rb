class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :image_name, null: false
      t.text :image_id, null: false
      t.text :introduction
      t.integer :creator_id

      t.timestamps
    end
  end
end
