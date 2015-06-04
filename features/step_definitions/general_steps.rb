# encoding: utf-8

Given /^User on home page and want watch product page$/ do
  create_product
  visit root_path
end

When(/^Click on product link$/) do
  visit product_path @product
end

Then(/^I should see title Product name$/) do
  expect(page).to have_title(@product.name)
end

Then(/^I should see Product name$/) do
  expect(page).to have_css('h1', text: @product.name)
end

Then(/^I should see Product full description$/) do
  expect(page).to have_css('.product .description', text: @product.full_description)
end

Then(/^I should see Product price$/) do
  expect(page).to have_css('span.price', text: @product.price)
end

Then(/^I should see Button 'В козину'$/) do
  find_button("в корзину")
end

Given(/^The user enters a web browser request for a product which is not\.$/) do
  @invalid_product = create_product
  @invalid_product.id = 0
end

When(/^The user sends a request\.$/) do
  visit product_path @invalid_product
end

Then(/^The user is redirected to a (\d+) page\.$/) do |arg1|
  expect(page).to have_content("page")
end



Given(/^User on home page\.$/) do
  create_products
end

When(/^Click on home link\.$/) do
  visit root_path
end

Then(/^User should see recommend items\.$/) do
  @products.each do |product|
    expect(page).to have_content(product.name)
    expect(page).to have_content(product.price)
    expect(page).to have_css(".image")
  end
end

Then(/^Count recommend items equal\.$/) do
  expect(page).to have_xpath("//h1[text()=\"Рекомендуемые товары\"]/following-sibling::ul/li", count: 6)
end
