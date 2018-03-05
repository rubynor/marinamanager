FactoryBot.define do
    factory :admin, class: User do
      user_level 1
      email { Faker::Internet.email}
      first_name { Faker::Name.first_name }
      last_name { Faker::Name.last_name }
      password "passord"
      password_confirmation "passord"
      phone_number { Faker::Number.number(8) }
      street_name { Faker::Address.street_name }
      street_number { Faker::Number.number(2) }
      post_code { Faker::Number.number(4) }
    end

    factory :user do
        user_level 0
        email { Faker::Internet.email}
        first_name { Faker::Name.first_name }
        last_name { Faker::Name.last_name }
        password "passord"
        password_confirmation "passord"
        phone_number { Faker::Number.number(8) }
        street_name { Faker::Address.street_name }
        street_number { Faker::Number.number(2) }
        post_code { Faker::Number.number(4) }
      end
  end