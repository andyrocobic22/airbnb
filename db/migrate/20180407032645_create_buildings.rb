class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.integer :building ,null:false
      t.timestamps
    end
  end
end
