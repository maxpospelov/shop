
#session.visit() # use it to call DSL methods

Given(/^User visit home page\.$/) do
  visit root_path
end

When(/^Count visit Product page (\d+)\.$/) do |arg1|
  @products = (1..arg1.to_i).collect{ create(:product) }
  visit_products_page @products
end

Then(/^Visit blog must have content "(.*?)"\.$/) do |arg1|
 expect(page).to have_selector('div#left h2')
end

Then(/^Count product in visit blog equal (\d+)\.$/) do |arg1|
  expect(page).to have_selector("ul#browsed_products li a", count: arg1)
end

Then(/^Visit blog not have content "(.*?)"\.$/) do |arg1|
  expect(page).not_to have_selector('div#left h2', text: arg1)
end