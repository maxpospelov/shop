class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :keyword
      t.string :slug
      t.string :description
      t.string :image
      t.timestamps
    end
  end
end
