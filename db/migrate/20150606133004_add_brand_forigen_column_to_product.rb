class AddBrandForigenColumnToProduct < ActiveRecord::Migration
  def up
    add_column :products, :brand_id, :integer
  end

  def down
    remove_column :products, :brand_id
  end
end
