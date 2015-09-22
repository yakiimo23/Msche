class CreateBandsUsers < ActiveRecord::Migration
  def change
    create_table :bands_users, id: false do |t|
      t.references :user, index: true, null: false
      t.references :band, index: true, null: false
    end
  end
end
