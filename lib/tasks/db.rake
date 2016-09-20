namespace :db do
  desc "remake database data"
  task remake_data: :environment do
    Rake::Task["db:migrate:reset"].invoke

    p "Create 5 media arts"
    5.times {FactoryGirl.create :media_art}

    p "Create 5 brands"
    5.times {FactoryGirl.create :brand}

    p "Create 5 types"
    5.times {FactoryGirl.create :type}

    brands = Brand.all
    types = Type.all
    media_arts = MediaArt.all

    puts "Create 30 products."
    30.times {FactoryGirl.create :product, brand: brands.sample,
      type: types.sample, media_art: media_arts.sample}

    puts "Complete."
  end
end
