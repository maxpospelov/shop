class AddColumnCatalogReferenceToProduct < ActiveRecord::Migration
  def up
    add_column :products, :catalog_id, :integer
  end

  def down
    remove_column :products, :catalog_id
  end
end
