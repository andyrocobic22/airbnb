class CreateRoomAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :room_amenities do |t|
      t.integer :room_id,null:false,foreign_key: true
      t.boolean :amenity_id,default:false,null:false,foreign_key: true
      t.timestamps
    end
  end
end
