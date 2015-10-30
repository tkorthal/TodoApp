class RemoveCreatedAtFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :created_at, :datetime
  end
end
