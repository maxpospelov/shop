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

def create_visit_product count
  @visit_product = (0..count.to_i).collect{ |c| create(:visit_product, sessionid:  'ca0e7158f2eb9c665377a83d43d577c7' , product_id: c)}
end

def current_sessionss
  request.session_options[:id] = 'ca0e7158f2eb9c665377a83d43d577c7'
end
