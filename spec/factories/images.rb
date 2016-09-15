FactoryGirl.define do
  factory :image do
    photo "https://s-media-cache-ak0.pinimg.com/736x/93/5b/64/935b64236e3a743107929e341617e039.jpg"
    slide_show Settings.images.slide_show.deactivate
  end
end
