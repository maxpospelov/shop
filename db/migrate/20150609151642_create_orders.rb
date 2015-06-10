class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string  :user_name
      t.string  :email
      t.string  :phone
      t.string  :address
      t.string  :pay_type

      t.timestamps
    end
  end
end
