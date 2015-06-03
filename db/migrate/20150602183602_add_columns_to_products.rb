class AddColumnsToProducts < ActiveRecord::Migration
  def up
    add_column :products, :active,:boolean
    add_column :products, :recommend, :boolean
    add_column :products, :article, :string
    add_column :products, :price, :float
    add_column :products, :old_price, :float
    add_column :products, :slug, :string
    add_column :products, :description_page, :string
    add_column :products, :keywords, :string
    add_column :products, :short_description, :string
    add_column :products, :full_description, :string
  end
  def down
    remove_column :products, :active,:boolean
    remove_column :products, :recommend, :boolean
    remove_column :products, :article, :string
    remove_column :products, :price, :float
    remove_column :products, :old_price, :float
    remove_column :products, :slug, :string
    remove_column :products, :description_page, :string
    remove_column :products, :keywords, :string
    remove_column :products, :short_description, :string
    remove_column :products, :full_description, :string
  end
end
