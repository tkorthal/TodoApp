class DropLists < ActiveRecord::Migration
  def change
    drop_table :Lists
  end
end
