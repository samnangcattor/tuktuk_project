FactoryGirl.define do
  factory :type do
    name {["Type 1", "Type 2", "Type 3", "Type 4"].sample}
  end
end
