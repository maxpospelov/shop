class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    if @order.save
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      redirect_to root_path
    else
      render 'carts/show'
    end
  end

  def edit
    @line_items = LineItem.find_by_order_id(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:user_name, :address, :email, :pay_type, :phone)
  end
end