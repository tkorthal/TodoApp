class AddCreatedDateToList < ActiveRecord::Migration
  def change
    add_column :lists, :created_at, :datetime
  end
end
