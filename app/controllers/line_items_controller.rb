class LineItemsController < ApplicationController
  include CurrentCart
  skip_before_action :verify_authenticity_token
  before_action :set_cart, only:[:create, :update]

  def index
  end

  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)

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

  def update
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      if @line_item.update_attributes(order_params)
        format.json { render json: @cart, status: :created, location: @cart }
      else

      end
    end
  end

  private
  def order_params
    params.require(:line_item).permit(:count)
  end

end
