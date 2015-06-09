require "factory_girl"
include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :product do
    sequence(:name){|n| "Product#{n}"}

    active              true
    recommend           false
    article             "A1"
    price               200
    old_price           100
    slug                "phone"
    description_page    "Description about page"
    keywords            "Keyword"
    short_description   "Short description product"
    full_description    "Full description product"
    image               { fixture_file_upload("spec/support/image/image.jpeg", "image/jpeg") }
    association         :brand, factory: :brand
    association         :catalog, factory: :catalog
  end

  factory :visit_product do
    association :product
    sessionid  '111'
  end

  factory :catalog do
    sequence(:name){|n| "Catalog#{n}"}
    active true
    parent_id nil
    address :name
    title   "Title"
    keywords  "Keyword"
    page_description "Page"
    image   "Image"
    full_description  "Description"
  end

  factory :brand do
    sequence(:name){|n| "Brands#{n}"}
    keyword  'keyword'
    sequence(:slug){|n| "/brands/slug#{n}"}
    description  "Description"
    image "image.png"
  end

  factory :cart do
  end

  factory :line_item do
    association         :product, factory: :product
    association         :cart,    factory: :cart
  end

end