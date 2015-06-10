class Order < ActiveRecord::Base
  has_many :line_items
  has_many :products, through: :line_items

  PAYMENT_TYPES = ["Курьерская доставка по Москве(бесплатно)","Самовывоз(беспалатно)"]
  accepts_nested_attributes_for :line_items

  validates :user_name, :email, :phone, :address , presence: true

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
