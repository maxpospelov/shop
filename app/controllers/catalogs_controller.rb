class CatalogsController < ApplicationController
  def index
  end
  def show
    @catalog = Catalog.find(params[:id])
    @products = @catalog.products
  end
end
