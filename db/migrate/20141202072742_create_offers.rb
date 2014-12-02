class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :item_id
      t.float :proportion

      t.timestamps

    end
  end
end
