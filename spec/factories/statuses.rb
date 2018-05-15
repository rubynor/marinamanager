# == Schema Information
#
# Table name: statuses
#
#  id         :bigint(8)        not null, primary key
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :status do
    status "MyString"
  end
end
