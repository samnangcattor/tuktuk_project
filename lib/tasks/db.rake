namespace :db do
  desc "remake database data"
  task remake_data: :environment do
    Rake::Task["db:migrate:reset"].invoke

    puts "Create 10 products."
    12.times {FactoryGirl.create :product}
    puts "Complete."
  end
end
