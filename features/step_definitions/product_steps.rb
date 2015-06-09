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


def visit_products_page products
  products.each do |product|
    visit product_path product
  end
end

def search_link selector, href
  expect(page).to     have_css("a[href='#{href}']")
end

def line_item_post line_item
  page.driver.post(line_items_path,{product_id: line_item.product.id})
end
