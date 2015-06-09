class AddCountToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :count, :integer
  end
end
