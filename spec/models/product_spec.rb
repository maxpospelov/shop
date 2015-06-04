require 'rails_helper'

RSpec.describe Product, type: :model do
  it "expect" do
      product = create(:product, name: "Product")
      expect(product).to be_valid
  end
end
