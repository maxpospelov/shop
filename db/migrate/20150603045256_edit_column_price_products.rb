class EditColumnPriceProducts < ActiveRecord::Migration
  def up
    change_column :products, :price, :float, precision: 8, scale: 2
  end

  def down
    change_column :products, :price, :float
  end
end
