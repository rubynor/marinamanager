
FactoryBot.define do
    factory :berthorder do
      berth_id { FactoryBot.create(:pier).id} 
      boat_id { FactoryBot.create(:boat).id }
      price_per_month{ Faker::Number.number(3)}
      start_date {Faker::Date.between(2.years.ago, 1.day.ago)}
      end_date {Faker::Date.between(1.day.from_now, 1.year.from_now)}
    end

    factory :invalidberthorder, class: BerthOrder do
      berth_id { FactoryBot.create(:pier).id} 
      boat_id { FactoryBot.create(:boat).id }
      price_per_month{ Faker::Number.number(3)}
      start_date {Faker::Date.between(2.years.ago, 1.day.ago)}
      end_date {Faker::Date.between(1.day.from_now, 1.year.from_now)}
    end

   
end