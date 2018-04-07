class CreateBeforehands < ActiveRecord::Migration[5.0]
  def change
    create_table :beforehands do |t|
      t.integer :beforehands
      t.timestamps
    end
  end
end
