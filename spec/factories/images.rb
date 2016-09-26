FactoryGirl.define do
  factory :image do
    photo {["https://anf.scene7.com/is/image/anf/hol_129315_02_prod1?$product-hol-v1$&$product-magnify-hol-v1$", "https://anf.scene7.com/is/image/anf/hol_129315_02_model1?$product-ofp-hol-v1$",
      "https://anf.scene7.com/is/image/anf/hol_129315_02_model2?$product-ofp-hol-v1$", "https://anf.scene7.com/is/image/anf/hol_129315_02_model3?$product-ofp-hol-v1$"].sample}
    slide_show Settings.images.slide_show.deactivate
  end
end
