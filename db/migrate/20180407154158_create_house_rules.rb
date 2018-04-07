class CreateHouseRules < ActiveRecord::Migration[5.0]
  def change
    create_table :house_rules do |t|
      t.boolean :kid,default:false
      t.text :kid_reason
      t.boolean :baby,default:false
      t.text :baby_reason
      t.boolean :pet,default:false
      t.boolean :smoke,default:false
      t.boolean :event_party,default:false
      t.integer :room_id,null:false,foreign_key: true
      t.timestamps
    end
  end
end
