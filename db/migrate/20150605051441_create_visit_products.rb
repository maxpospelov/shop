class CreateVisitProducts < ActiveRecord::Migration
  def change
    create_table :visit_products do |t|
      t.string  :sessionid
      t.integer :product_id
      t.timestamps
    end
  end
end
