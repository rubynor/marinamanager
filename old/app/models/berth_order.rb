class BerthOrder < ApplicationRecord
	belongs_to :berth
	belongs_to :boat
end
