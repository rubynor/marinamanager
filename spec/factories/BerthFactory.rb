
FactoryBot.define do
    factory :berth do
      letter { (0...2).map { ('a'..'z').to_a[rand(26)] }.join }
      berth_number { Faker::Number.number(3)}
      width { Faker::Number.between(2, 10) }
      price_per_month{ Faker::Number.number(3)}
      pier_id {FactoryBot.create(:pier).id}
    end
  end