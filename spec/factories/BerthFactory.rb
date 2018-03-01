
FactoryBot.define do
    factory :berth do
      berth_number { Faker::Number.number(3)}
      width { Faker::Number.between(2, 10) }
      price_per_month{ Faker::Number.number(3)}
      in_service {true}
      pier_id {FactoryBot.create(:pier).id}
    end

    factory :berth_notinservice, class: Berth do
      berth_number { Faker::Number.number(3)}
      width { Faker::Number.between(2, 10) }
      price_per_month{ Faker::Number.number(3)}
      in_service {false}
      pier_id {FactoryBot.create(:pier).id}
  end
end