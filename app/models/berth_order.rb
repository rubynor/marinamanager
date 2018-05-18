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

class BerthOrder < ApplicationRecord

	belongs_to :boat
	belongs_to :season
  belongs_to :status

	accepts_nested_attributes_for :boat
	accepts_nested_attributes_for :season

end
