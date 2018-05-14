# == Schema Information
#
# Table name: berth_orders
#
#  id        :bigint(8)        not null, primary key
#  berth_id  :bigint(8)
#  boat_id   :bigint(8)
#  season_id :bigint(8)
#  status_id :bigint(8)
#

require 'rails_helper'

RSpec.describe BerthOrder, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
