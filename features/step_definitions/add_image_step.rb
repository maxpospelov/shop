When(/^User visit product page\.$/) do
  @products =(0..10).each {|n| create(:product, image: "Image#{n}") }
end

Then(/^User should see image of product\.$/) do
  pending # express the regexp above with the code you wish you had
end