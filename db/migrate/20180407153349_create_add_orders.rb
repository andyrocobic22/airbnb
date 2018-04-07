class CreateAddOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :add_orders do |t|
      t.integer :add_order
      t.timestamps
    end
  end
end
