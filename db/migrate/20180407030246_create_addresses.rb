class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :country ,null: false
      t.integer :mail_number ,null: false
      t.integer :prefecture ,null: false
      t.string :city ,null: false
      t.string :city_detail ,null: false
      t.integer :room_number ,null: false
      t.integer :room_id ,null: false

      t.timestamps
    end
  end
end
