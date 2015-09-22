class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.references :group, index: true

      t.timestamps null: false
    end
  end
end
