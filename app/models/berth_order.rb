class BerthOrder < ApplicationRecord
	
	belongs_to :boat
	has_one :berth, required: false
	has_one :pier, through: :berth, required: false

	# For å lage validering må vi finne ut hvordan en service order skal se ut. 

end
