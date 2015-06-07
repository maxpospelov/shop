class BrandsController < ApplicationController
  def index
  end

  def show
    @brand = Brand.find(params[:id])
    @products = @brand.products
  end
end
