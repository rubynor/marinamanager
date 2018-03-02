FactoryBot.define do
    factory :boat do
      reg_number { Faker::Vehicle.vin}
      model { Faker::Name.last_name }
      width 2
      length 9
      association :user
    end

    factory :largeBoat, class: Boat do
      reg_number { Faker::Vehicle.vin}
      model { Faker::Name.last_name }
      width 9
      length 35
      association :user
      end
  end