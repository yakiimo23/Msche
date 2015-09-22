class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.timestamp :start_day
      t.timestamp :end_day
      t.references :group, index: true

      t.timestamps null: false
    end
  end
end
