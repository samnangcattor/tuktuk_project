FactoryGirl.define do
  factory :brand do
    name {["Brand 1", "Brand 2", "Brand 3", "Brand 4"].sample}
  end
end
