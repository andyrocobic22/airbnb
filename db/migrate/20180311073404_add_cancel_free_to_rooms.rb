class AddCancelFreeToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :cancel_free, :text
  end
end
