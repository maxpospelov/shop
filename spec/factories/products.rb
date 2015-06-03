FactoryGirl.define do
  factory :product do
    sequence(:name){|n| "Prodcut#{n}"}
    active true
    recommend true
    article "Article"
    price 200.00
    old_price 100.00
    slug "slug"
    description_page "Description page"
    keywords  "Keywords"
    short_description "Short Description"
    full_description "Full Description"
  end

end
