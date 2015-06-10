Given(/^Create (\d+) posts\.$/) do |arg1|
  @blogs = (0..10).collect{ create(:blog_post) }
end

When(/^The user visit blog page\.$/) do
  visit blog_path
end

Then(/^The user should see (\d+) post title link\.$/) do |arg1|
  @blogs.each do |post|
    expect(page).to have_selector("ul#blog a", text: post.title)
  end
end


When(/^Click post link\.$/) do
  visit blog_post_path(@blogs[0])
end

Then(/^Should see content post\.$/) do
  expect(page).to have_content(@blogs[0].title)
  expect(page).to have_content(@blogs[0].full_description)
end

Given(/^The user on post page.$/) do
  @post = create(:blog_post)
  visit blog_post_path(@post)
end

When(/^Create comment to post.$/) do
  page.fill_in 'Написать коментарий', with: "Комментарий"
  page.fill_in "Имя", with: "Имя"
  click_button "Отправить"
end

Then(/^Should see content comment.$/) do
  pending # express the regexp above with the code you wish you had
end


