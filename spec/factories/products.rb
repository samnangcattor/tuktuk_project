FactoryGirl.define do
  factory :product do
    name Faker::Commerce.product_name
    price 5000
    discount 5
    description Faker::Hipster.sentence
    after(:create) do |product|
      create :image, product: product, slide_show: Settings.images.slide_show.activate,
        photo: "https://storage.designcrowd.com/design_img/1207360/71684/71684_6357058_1207360_4fd0e6db_image.jpg"
      9.times{create :image, product: product}
    end
  end
end
