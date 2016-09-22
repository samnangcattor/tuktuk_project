FactoryGirl.define do
  factory :brand do
    name {["brand 1", "brand 2", "brand 3", "brand 4"].sample}
  end
end
