When(/^User visit products page\.$/) do
  @products = (0..10).collect{|n| create(:product)}
  visit_products_page @products
  visit root_path
end

Then(/^User should see thumb image of products\.$/) do
  @products.each do |product|
    expect(page).to have_xpath("//img[contains(@src,'thumb_')]")
  end
end


When(/^User visit product page\.$/) do
  @product = create(:product)
  visit product_path @product
end

Then(/^User should see image of product\.$/) do
  expect(page).to have_xpath("//div[@class='product']/div[@class='image']/a[@href='#{product_path(@product)}']/img[contains(@src, 'image.jpeg')]")
end
