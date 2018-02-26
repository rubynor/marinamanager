class BerthOrder < ApplicationRecord
	belongs_to :berth
	belongs_to :boat

	# For å lage validering må vi finne ut hvordan en service order skal se ut. 

end
