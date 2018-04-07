class CreateCategoryBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :category_buildings do |t|
      t.integer :category_id,null:false,foreign_key: true
      t.integer :building_id,null:false,foreign_key: true
      t.timestamps
    end
  end
end
