FactoryGirl.define do
  factory :type do
    name {["type 1", "type 2", "type 3", "type 4"].sample}
  end
end
