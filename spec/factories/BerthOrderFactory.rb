
FactoryBot.define do
    factory :berthOrder do
      price_per_month{ Faker::Number.number(3)}
      start_date {Faker::Date.between(2.years.ago, 1.day.ago)}
      end_date {Faker::Date.between(1.day.from_now, 1.year.from_now)}
      association :boat
      association :pier 
      
    end

    factory :invalidBerthOrder, class: BerthOrder do
      price_per_month{ Faker::Number.number(3)}
      start_date {Faker::Date.between(2.years.ago, 1.day.ago)}
      end_date {Faker::Date.between(1.day.from_now, 1.year.from_now)}
      association :boat
      association :pier 

    end

   
end