class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
    if @product.active
      create_visit_products
    else
      raise ActiveRecord::RecordNotFound
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

  private

  def create_visit_products
      VisitProduct.create(product_id: @product.id, sessionid: request.session_options[:id])  if user_not_visit_product(@product, request.session_options[:id])
  end

  def user_not_visit_product product, user
    return true if VisitProduct.where(product_id: product.id, sessionid: user).empty?
    false
  end
end
