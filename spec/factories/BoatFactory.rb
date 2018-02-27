FactoryBot.define do
    factory :boat do
      reg_number { Faker::Vehicle.vin}
      model { Faker::Name.last_name }
      width 2
      length 9
      user_id {FactoryBot.create(:user).id}
    end

    factory :large, class: Boat do
      reg_number { Faker::Vehicle.vin}
      model { Faker::Name.last_name }
      width 9
      length 35
      end
  end