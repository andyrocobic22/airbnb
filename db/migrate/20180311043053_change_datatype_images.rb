class ChangeDatatypeImages < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :images, :text
  end
end
