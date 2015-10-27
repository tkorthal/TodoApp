class RemoveListIdFromList < ActiveRecord::Migration
  def change
    remove_column :lists, :list_id, :integer
    add_column :lists, :created_on, :datetime
  end
end
