class BerthOrderController < ApplicationController
	def index
		@berth_orders = BerthOrder.all
		@boats = Boat.all
		@berths = Berth.all
	end

end
