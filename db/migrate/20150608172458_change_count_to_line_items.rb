class ChangeCountToLineItems < ActiveRecord::Migration
  def up
    change_column :line_items, :count, :integer, default: 1
  end

  def down
    change_column :line_items, :count, :integer
  end
end
