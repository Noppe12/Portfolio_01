class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :member_id
      t.integer :item_id
      t.integer :creator_id

      t.timestamps
      t.index [:member_id, :item_id], unique: true
    end
  end
end
