# == Schema Information
#
# Table name: berths
#
#  id         :bigint(8)        not null, primary key
#  width      :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

require 'test_helper'

class BerthTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
