class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_id
      t.integer :rating
      t.string :store_link
      t.text :description
      t.string :pic
      t.float :status

      t.timestamps

    end
  end
end
