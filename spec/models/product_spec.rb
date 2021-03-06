require 'spec_helper'

RSpec.describe Product, type: :model do
  context "db" do
    context "columns" do
      it { should have_db_column(:name).of_type(:string).with_options(null: false)}
      it { should have_db_column(:active).of_type(:boolean) }
      it { should have_db_column(:recommend).of_type(:boolean) }
      it { should have_db_column(:created_at).of_type(:datetime) }
      it { should have_db_column(:updated_at).of_type(:datetime) }
      it { should have_db_column(:article).of_type(:string)}
      it { should have_db_column(:price).of_type(:float) }
      it { should have_db_column(:old_price).of_type(:float) }
      it { should have_db_column(:slug).of_type(:string) }
      it { should have_db_column(:description_page).of_type(:string) }
      it { should have_db_column(:keywords).of_type(:string) }
      it { should have_db_column(:short_description).of_type(:string) }
      it { should have_db_column(:full_description).of_type(:string) }
    end
  end

  context "attributes" do
    context "validate" do
      before do
        @product = build(:product)
      end

      subject{ @product }

      it{ expect(subject).to be_valid }

      it "requires name" do
        subject.name = nil
        expect(subject).to validate_presence_of(:name)
      end

      it "uniquness name" do
        product = subject.dup
        expect(product).to validate_uniqueness_of(:name)
      end

      it "price should be not negative" do
        subject.price = 0.01
        expect(subject).to be_valid
      end

    end
  end

end
require 'rails_helper'

RSpec.describe Product, type: :model do
  it "expect" do
      product = create(:product, name: "Product")
      expect(product).to be_valid
  end
end
