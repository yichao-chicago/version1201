class AddTitleToItems < ActiveRecord::Migration
  def change
    add_column :items, :title, :string, :default => "abc"
  end
end
