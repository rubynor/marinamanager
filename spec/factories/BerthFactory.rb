
FactoryBot.define do
    factory :berth do
      berth_number { Faker::Number.number(3)} 
      width { Faker::Number.between(2, 10) }
      cost{ Faker::Number.number(3)}
      in_service {true}
      association :pier
    end

    factory :berth_notinservice, class: Berth do
      berth_number { Faker::Number.number(3)}
      width { Faker::Number.between(2, 10) }
      cost{ Faker::Number.number(3)}
      in_service {false}
      association :pier
  end
end