class CreateTableLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :list_id
      t.string :title
    end

    create_table :items do |t|
      t.integer :item_id
      t.text :content
      t.boolean :completed
    end

    add_reference :items, :list, index: true, foreign_key: true 
  end
end
