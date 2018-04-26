class BerthOrder < ApplicationRecord

	belongs_to :boat
	belongs_to :berth, optional: true
	belongs_to :boat_season
	has_one :pier, through: :berth, required: false

end
