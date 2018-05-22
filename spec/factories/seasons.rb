# == Schema Information
#
# Table name: seasons
#
#  id              :bigint(8)        not null, primary key
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  start_season_on :date
#  end_season_on   :date
#  berths          :integer
#

FactoryBot.define do
  factory :season do
    title "MyString"
    description "MyString"
    startSeason "2018-05-01"
    endSeason "2018-05-01"
  end
end
