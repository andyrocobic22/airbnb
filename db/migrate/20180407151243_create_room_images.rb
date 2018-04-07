class CreateRoomImages < ActiveRecord::Migration[5.0]
  def change
    create_table :room_images do |t|
      t.integer :room_id,null:false,foreign_key: true
      t.integer :image_id,null:false,foreign_key: true
      t.timestamps
    end
  end
end
