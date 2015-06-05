class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])

    unless  VisitProduct.where(product_id: @product.id, sessionid: request.session_options[:id])
      VisitProduct.create(product_id: @product.id, sessionid: request.session_options[:id])
    end
    
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
