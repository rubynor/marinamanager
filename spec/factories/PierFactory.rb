FactoryBot.define do
    factory :pier do
      letter { (0...2).map { ('a'..'z').to_a[rand(26)] }.join }
    end
  end