def create_product
  @product = create(:product)
end

def create_products
  @products = (1..6).collect{ create(:product, recommend: true) }
end
