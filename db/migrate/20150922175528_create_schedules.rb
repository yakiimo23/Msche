class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.timestamp :start_day
      t.timestamp :end_day
      t.references :group, index: true
      t.references :room, index: true
      t.references :band, index: true

      t.timestamps null: false
    end
  end
end
