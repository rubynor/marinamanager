class BerthOrder < ApplicationRecord

	belongs_to :boat
	belongs_to :berth, optional: true
	has_one :pier, through: :berth, required: false

	# For å lage validering må vi finne ut hvordan en service order skal se ut.

end
