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

