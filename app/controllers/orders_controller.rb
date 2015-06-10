class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    if @order.save
      render text: 'save'
    else
      render text: 'not save'
    end
  end

  private
  def order_params
    params.require(:order).permit(:user_name, :address, :email, :pay_type, :phone)
  end
end