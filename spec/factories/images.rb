FactoryGirl.define do
  factory :image do
    photo "https://myblackpink.files.wordpress.com/2009/12/blackpink-tshirt.jpg"
    slide_show Settings.images.slide_show.activate
  end
end
