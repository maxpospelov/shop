When(/^Click order button\.$/) do
  @before_count_line_items = LineItem.count
  click_button 'в корзину'
end

When(/^Click link "(.*?)"\.$/) do |arg1|
  click_link arg1
end

When(/^The user visit cart page\.$/) do
  @cart = create(:cart)
  visit cart_path @cart
end


Then(/^The user should see element "(.*?)" with text "(.*?)"\.$/) do |element, text|
  expect(page).to have_selector(element, text)
end

Then(/^The user should see image thump product\.$/) do
  expect(page).to have_selector("table tbody tr td.image a img" )
end

Then(/^The user should see link product\.$/) do
  expect(page).to have_link(@product.name)
end

Then(/^The user should see price product\.$/) do
  expect(page).to have_selector("table tbody tr td.price", text: @product.price)
end

Then(/^The user should see count product in LineItems\.$/) do
  expect(page).to have_selector('td.amount')
end

Then(/^The user should see button delete\.$/) do
  expect(page).to have_selector("img[src$='delete.png']")
end

Then(/^The uer  should see total price in the cart\.$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Should add record in LineItem table\.$/) do
  div = LineItem.count - @before_count_line_items
  expect(div).to eq(1)
end

Given(/^The user on the cart page\.$/) do
  @product = create(:product)
  @cart = create(:cart)
  @line_items = (1..10).collect{create(:line_item)}

  @product.line_items = @line_items
  @cart.line_items = @line_items

  @line_items.each do |line_item|
    line_item_post line_item
  end

  visit cart_path @line_items[1].cart
end

When(/^Click delete item link\.$/) do
  find("tr[1] td.remove a").click
end

Then(/^Item should remove from cart\.$/) do
  expect(page).to have_selector('tr', count: (@cart.line_items.count - 1))
end

