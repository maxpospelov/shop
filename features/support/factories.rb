require "factory_girl"

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
  end

  factory :visit_product do
    association :product
    sessionid  '111'
  end

end