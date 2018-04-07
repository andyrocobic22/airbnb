class CreateAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :amenities do |t|
      t.integer :amenity
      t.timestamps
    end
  end
end
