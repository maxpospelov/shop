class StaticPagesController < ApplicationController
  def home
    @products = Product.where(recommend: true).limit(6)
    @discount_products = Product.where('old_price is not null').limit(3)
  end
  def blog
    @posts = BlogPost.all
  end
end
