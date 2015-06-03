class ProductsController < ApplicationController
  def new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    render text: "Hello!"
  end
end
