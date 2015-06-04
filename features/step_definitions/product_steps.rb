def create_product
  @product = create(:product)
end

def create_products
  @products = (1..6).collect{ create(:product, recommend: true) }
end

def create_product_count_three count
  @products = (1..count.to_i).collect{ create(:product, recommend: true)}
  @products << (1..6).collect{ create(:product, recommend: false)}
end

def create_discount_products count
  @products = (0...count.to_i).collect{ create(:product, old_price: 200)}
end

def product_showcase_present count
  @products[0...count.to_i].each do |product|
    expect(page).to have_content(product.name)
    expect(page).to have_content(product.price)
    expect(page).to have_css(".image")
  end
end