class AddRoomCategoryToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :room_category, :text
  end
end
