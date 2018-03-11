class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.text "room_name",unique: true
      t.text "room_place",unique: true
      t.integer "guest_number",unique: true
      t.integer "bed_room",unique: true
      t.integer "bath_room",unique: true
      t.text "room_introduce",unique: true
      t.text "bed_type_1",unique: true
      t.text "bed_type_2"
      t.text "bed_type_3"
      t.text "house_rule",unique: true
      t.text "house_rule_detail",unique: true
      t.text "cancel_rank",unique: true
      t.text "cancel_text",unique: true
      t.integer "user_id",foreign_key: true
      t.datetime "crated_at" ,null: false
      t.datetime "updated_at",null: false
    end
  end
end
