class StaticPagesController < ApplicationController
  def home
    @products = Product.where(recommend: true).limit(6)
  end
end
