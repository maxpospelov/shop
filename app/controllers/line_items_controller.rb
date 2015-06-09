class LineItemsController < ApplicationController
  include CurrentCart

  before_action :set_cart, only:[:create]
  def index
  end

  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.line_items.build(product: product)
    if @line_item.save
      redirect_to @line_item.cart
    else
      render action: 'new'
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to :back
  end

end
