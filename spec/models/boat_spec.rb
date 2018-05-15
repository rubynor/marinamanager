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

require 'rails_helper'

RSpec.describe Boat, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
