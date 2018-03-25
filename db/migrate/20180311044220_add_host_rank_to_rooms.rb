class AddHostRankToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :host_rank, :text
  end
end
