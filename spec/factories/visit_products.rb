FactoryGirl.define do
  factory :visit_products do
    association :product
    session_id  '111'
  end
end