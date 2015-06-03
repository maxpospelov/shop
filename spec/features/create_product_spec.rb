require 'spec_helper'

feature "Create Product" do

  let(:product){ create(:product)}

  scenario "with valid detals" do

    visit product_path(product)

    expect(page).to have_content(product.name)
    expect(page).to have_content(product.full_description)
  end
end