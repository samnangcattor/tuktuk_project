FactoryGirl.define do
  factory :product do
    name Faker::Commerce.product_name
    price 5000
    discount 5
    description Faker::Hipster.sentence
    after(:create) do |product|
      create :image, product: product
    end
  end
end
