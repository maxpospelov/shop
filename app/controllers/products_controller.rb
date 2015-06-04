class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
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
