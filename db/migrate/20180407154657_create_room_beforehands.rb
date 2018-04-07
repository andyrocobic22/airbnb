class CreateRoomBeforehands < ActiveRecord::Migration[5.0]
  def change
    create_table :room_beforehands do |t|
      t.integer :room_id,null:false,foreign_key: true
      t.boolean :beforehand_id,default:false,null:false,foreign_key: true
      t.timestamps
    end
  end
end
