class AddColorToList < ActiveRecord::Migration
  def change
    add_column :lists, :color, :string, {default: "#D4E994"}
  end
end
