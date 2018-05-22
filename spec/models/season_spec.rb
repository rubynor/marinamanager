# == Schema Information
#
# Table name: seasons
#
#  id               :bigint(8)        not null, primary key
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  start_season_on  :date
#  end_season_on    :date
#  number_of_berths :integer
#  berths           :integer
#

require 'rails_helper'

RSpec.describe Season, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
