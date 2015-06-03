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
    end
  end

end