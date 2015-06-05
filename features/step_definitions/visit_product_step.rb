
#session.visit() # use it to call DSL methods

Given(/^User visit home page\.$/) do
  visit root_path
  page.driver.browser.rack_mock_session.cookie_jar['id'] = 'ca0e7158f2eb9c665377a83d43d577c7'
  page.driver.browser.set_cookie("_shop_session=SEdzc0dkV0tJTitGek1RVU0vNkhkTlpkQm5tS3VSSGhaT2FUdTBvTUVaOEgrYjZaTTF5bzQ5RUZQeUdLL2JpUnBCYnVLTk5SU2xFTlJ5bkVmckk5OUtNc1h1Q09leTl6RUxMbjh4NG9FMklmb1BVdkNiS1lVQU9jSGNuYmpNaW9CVWxRTG9aOVNDcE9rQ21VRFJDNWh3VVl0R2J4aHpwRHBTZm5FWmZxN1ZPUGI4TDkzcng4T2ZKS3V2eFZkUGp1LS1qMG4vRk96Z0JITlMrTVowVmtnckpnPT0=--58a0e81b64991ff412084b5df06d7cbc057b3e59")
end

When(/^Count visit Product page (\d+)\.$/) do |arg1|
  create_visit_product arg1
end


Then(/^Visit blog must have content "(.*?)"\.$/) do |arg1|
 expect(page).to have_selector('div#left h2', text: arg1)
end

Then(/^Count product in visit blog equal (\d+)\.$/) do |arg1|
  expect(page).to have_selector("ul#browsed_products")
  expect(page).to have_selector("ul#browsed_products li", count: arg1)
end