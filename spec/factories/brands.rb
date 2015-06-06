FactoryGirl.define do
  factory :brand do
    sequence(:name){|n| "Brands#{n}"}
    keyword  'keyword'
    sequence(:slug){|n| "/brands/slug#{n}"}
    description  "Description"
    image "image.png"
  end
end