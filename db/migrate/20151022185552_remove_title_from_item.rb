class RemoveTitleFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :title, :string
  end
end
