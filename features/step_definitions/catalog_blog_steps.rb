Given(/^Create (\d+) catalogs$/) do |arg1|
  @catalog = create(:catalog)
end

Then(/^The user should see catalog blog\.$/) do
  expect(page).to have_css("div#catalog_menu")
end

Then(/^In the catalog blog should be catalog link\.$/) do
  expect(page).to have_link(@catalog.name) unless @catalog.products.empty?
end

Given(/^Without catalogs$/) do
  @catalog = build(:catalog)
end

Then(/^The user should not see catalog blog\.$/) do
  expect(page).not_to have_css("div#catalog_menu")
end

Given(/^Without product\.$/) do
  #
end

Given(/^Link product with catalog\.$/) do
 @products.each do |product|
   product.catalog = @catalog
 end
end

