# == Schema Information
#
# Table name: boats
#
#  id         :bigint(8)        not null, primary key
#  width      :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  name       :string
#

require 'test_helper'

class BoatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
