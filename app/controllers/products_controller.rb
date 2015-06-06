class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
    create_visit_products
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def create_visit_products
      VisitProduct.create(product_id: @product.id, sessionid: request.session_options[:id])  if  @product.visit_products.empty?
  end
end
