class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string      :name
      t.boolean     :active
      t.integer     :parent_id
      t.string      :address
      t.string      :title
      t.string      :keywords
      t.string      :page_description
      t.string      :image
      t.string      :full_description
      t.timestamps
    end
  end
end
