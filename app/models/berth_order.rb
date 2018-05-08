class BerthOrder < ApplicationRecord

	belongs_to :boat
	belongs_to :season
  belongs_to :status
	belongs_to :berth, optional: true

end
