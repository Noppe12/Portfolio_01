class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :penname, null: false
      t.string :email, null: false
      t.text :content, null: false
      t.integer :creator_id

      t.timestamps
    end
  end
end
