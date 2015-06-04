# encoding: utf-8
Given(/^Count discount goods is (\d+)\.$/) do |arg1|
  create_discount_products arg1
end

When(/^User on home page watch discount blog\.$/) do
  visit root_path
end

Then(/^User should see discount goods\.$/) do
  product_showcase_present 3
end

Then(/^Showing discount goods count is  equal (\d+)\.$/) do |arg1|
  expect(page).to have_xpath("//h1[text()=\"Акционные товары\"]/following-sibling::ul[1]/li", count: 3)
end

Then(/^Discount goods is not present\.$/) do
  expect(page).not_to have_css('h1', text: "Акционные товары")
end

Then(/^Count item in blog (\d+)\.$/) do |arg1|
  expect(page).to have_xpath("//h1[text()=\"Акционные товары\"]/following-sibling::ul[1]/li", count: arg1)
end

