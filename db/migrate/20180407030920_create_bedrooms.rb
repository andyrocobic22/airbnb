class CreateBedrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :bedrooms do |t|
      t.integer :room_id,null:false
      t.integer :bed_room_number,null:false
      t.integer :double
      t.integer :queen
      t.integer :single
      t.integer :king
      t.timestamps
    end
  end
end
