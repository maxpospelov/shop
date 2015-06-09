class ChangeColumnFullDescriptionToProducts < ActiveRecord::Migration
  def up
    change_column :products, :full_description, :text
  end

  def down
    change_column :products, :full_description, :string
  end
end
