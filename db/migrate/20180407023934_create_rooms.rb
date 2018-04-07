class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :category
      t.integer :building
      t.integer :room_type_id
      t.integer :guest_room
      t.integer :capacity
      t.integer :bed_number
      t.integer :bath_room
      t.text :overview
      t.text :house
      t.text :range
      t.text :communication
      t.text :others
      t.text :area
      t.text :trans
      t.integer :ever
      t.integer :frequency
      t.integer :deadline
      t.integer :checkin
      t.integer :checkout
      t.integer :limit
      t.integer :start
      t.integer :end
      t.integer :charge_setting
      t.integer :min_charge
      t.integer :basic_charge
      t.integer :max_charge
      t.integer :currency
      t.integer :special
      t.integer :week
      t.integer :mounth
      t.timestamps
    end
  end
end
