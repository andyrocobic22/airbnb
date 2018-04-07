class CreateSituations < ActiveRecord::Migration[5.0]
  def change
    create_table :situations do |t|
      t.integer :situation
      t.timestamps
    end
  end
end
