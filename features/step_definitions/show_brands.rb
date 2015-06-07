Given(/^Admin create (\d+) brands\.$/) do |arg1|
  @brands = (0..arg1.to_i).collect{ create(:brand) }
end

When(/^The user visit site\.$/) do
  visit root_path
end

Then(/^The user should see the blog with brands\.$/) do
  @brands.each do |brand|
    expect(page).to have_link(brand.name)
  end
end

Then(/^The user should not see the blog with brands\.$/) do
  expect(page).not_to have_css('h1', text:"Все бренды:")
end



Given(/^Admin create (\d+) brands$/) do |arg1|
  @brand = create(:brand)
end

Given(/^Create (\d+) product$/) do |arg1|
  @products = (0..arg1.to_i).collect{create(:product)}
end

Given(/^Link them with the goods\.$/) do
  @products.each do |product|
    product.brand = @brand
    product.save
  end
end

When(/^Click on brand link\.$/) do
  visit brand_path(@brand)
end

Then(/^Should see product list with brand\.$/) do
  @brand.products.each do |products|
    expect(page).to have_selector('h1', text: @brand.name)
    expect(page).to have_selector('ul.products li.product h3', text: products.name)
    expect(page).to have_link(products.name)
    expect(page).to have_content(products.short_description)
    expect(page).to have_content(products.price)
    expect(page).to have_xpath("//ul/li//img")
  end
end

Then(/^Should not see product list with brand\.$/) do
  expect(page).not_to have_selector('ul.products li.product h3')
end



